import pepita.*
import wollok.game.*

object arriba {
    method siguiente(position) {
        if (position.y() < game.height() - 1) {
            return position.up(1)
        }
        else{
            return position
        }
    }
}

object abajo {
    method siguiente(position) = position.down(1)
}

object izquierda {
    method siguiente(position) = position.left(1)
}

object derecha {
    method siguiente(position) = position.right(1)
}