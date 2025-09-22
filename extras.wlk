import pepita.*
import wollok.game.*
import niveles.*


object nido {
    var property position = game.at(8,8)

    method image() = "nido.png"

    method chocaContraPepita(){
        pepita.estaEnCasa()
        nivel1.ganar()
    }
}

object silvestre {
    const presa = pepita

    method image() = "silvestre.png"

    method position() = game.at(self.x(), 0)

    method x()= 3.max(presa.position().x())

    method chocaContraPepita(){
        pepita.perder()
    }
    
}

object muro {
    var property position = game.at(4,5) 
    
    method image() = "muro.png"

    method chocaContraPepita() {
      return  
    }
}


