import pepita.*
import extras.*
import wollok.game.*

object arriba {
    method siguiente(position) {
        const posicionSiguiente = position.up(1)

        if ((position.y() < game.height() - 1) and (posicionSiguiente != muro.position())) {
            return position.up(1)
        }
        else{
            return position
        }
    }
}

object abajo {
    method siguiente(position) {
        const posicionSiguiente = position.down(1)

        if ((position.y() > 0) and (posicionSiguiente != muro.position())) {
            return position.down(1)
        }
        else{
            return position
        }
    }
}

object izquierda {
    method siguiente(position) {
        const posicionSiguiente = position.left(1)
        
        if (position.x() > 0 and (posicionSiguiente != muro.position())) {
            return position.left(1)
        }
        else{
            return position
        }
    }
}

object derecha {
    method siguiente(position) {
        const posicionSiguiente = position.right(1)
        
        if (position.x() < game.width() - 1 and (posicionSiguiente != muro.position())) {
            return position.right(1)
        }
        else{
            return position
        }
    }
}