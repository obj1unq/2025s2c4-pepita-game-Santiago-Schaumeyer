import randomizer.*
import comidas.*
import wollok.game.*
import extras.*
import direcciones.*
import niveles.*

object pepita {
	const energiaInicial = 100
	const posicionInicial = game.at(0,1)
	const predador = silvestre
	const hogar = nido
	const joules = 9

	var energia = energiaInicial
	var property position = posicionInicial
	var property atrapada = false 

	method text() = "Energia: \n" + energia 

	method texColor() = "FF0000"
	
	method energia() {
		return energia
	}


	method inicializar(){
		position = posicionInicial
		energia = energiaInicial
		atrapada = false	
	}

	// ESTADO DE PEPITA
	method estado() {
		return if (!self.puedeMover() || self.estaAtrapada()) { "pepita-gris.png" }
		  else if (self.estaEnCasa()) { "pepita-grande.png"  }
			else { "pepita-base.png" }
	}

	method estaAtrapada() {
		return self.estaSobre(predador)

	} 

	method estaEnCasa(){
		return self.estaSobre(hogar)
	}

	method image() {
	  return self.estado()
	}

	method estaSobre(alguien) {
		return position == alguien.position()
	}

	//
	// ACCIONES DE PEPITA

	method chocaContra(alguien){
		alguien.chocaContraPepita()
	}

	method comer(comida) {
	  energia+= comida.energiaQueOtorga()
	}

	method energiaNecesaria(kms) {
		return joules * kms
	}

	method volar(kms) {
		energia -= self.energiaNecesaria(kms) 
	}

	method puedeVolar() = energia >= self.energiaNecesaria(1) 

	method puedeMover() = self.puedeVolar() and !self.estaAtrapada()

	method moverDireccion(direccion) {
		if(self.puedeMover()){
			self.volar(1)
			position = direccion.siguiente(position)	
		} else {
			self.perder()
		} 
	}

	method perder(){
		nivel1.reiniciar()
	}
}

