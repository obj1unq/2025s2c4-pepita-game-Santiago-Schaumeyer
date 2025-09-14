import randomizer.*
import comidas.*
import wollok.game.*
import extras.*
import direcciones.*


object pepita {
	var energia = 100
	var property position = game.at(0,1)
	const predador = silvestre
	const hogar = nido
	const joules = 9
	
	method image() {
	  if (self.estaAtrapada() || energia < joules) {
		return "pepita-gris.png"
	  } else if ( self.estaEnCasa() ) {
		return "pepita-grande.png"
	  } else {
		return "pepita-base.png"}	
	}

	method estaAtrapada() {
		return self.estaSobre(predador)
	} 

	method estaEnCasa(){
		return self.estaSobre(hogar)
	}

	method estaSobre(alguien) {
		return self.position() == alguien.position()
	}	

	method text() = "Energia: \n" + energia 

	method texColor() = "FF0000"

	method comer(comida) {
		if(position == comida.position()){
			energia = energia + comida.energiaQueOtorga()
		}
	}

	method energiaNecesaria(kms) {
		return joules * kms
	}

	method volar(kms) {
		energia -= self.energiaNecesaria(kms) 
	}

	method moverDireccion(direccion) {
		if((energia > joules)){
			self.volar(1)
			position = direccion.siguiente(position)	
		} 
	}

	method energia() {
		return energia
	}
}

