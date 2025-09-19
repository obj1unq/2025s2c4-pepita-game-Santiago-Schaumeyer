import wollok.game.*
import pepita.*
import extras.*
import direcciones.*
import comidas.*

object nivel1 {
	method inicializar(){
	game.addVisual(nido)
	game.addVisual(silvestre)
	game.addVisual(alpiste)
	game.addVisual(manzana)
	game.addVisual(muro)
	game.addVisual(pepita)

	keyboard.up().onPressDo({pepita.moverDireccion(arriba)})
	keyboard.down().onPressDo({pepita.moverDireccion(abajo)})
	keyboard.left().onPressDo({pepita.moverDireccion(izquierda)})
	keyboard.right().onPressDo({pepita.moverDireccion(derecha)})

	game.onCollideDo(pepita,{alguien => pepita.chocaContra(alguien)})
	
	} 

	method reiniciar() {
		pepita.energia() == 0 
		game.say(self, "Perdiste, presiona R para reiniciar")
		keyboard.r().onPressDo({
			game.clear()
			self.inicializar()
			pepita.inicializar()
			})
	}
}