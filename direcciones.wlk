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
    method siguiente(position) {
        if (position.y() > 0) {
            return position.down(1)
        }
        else{
            return position
        }
    }
}

object izquierda {
    method siguiente(position) {
        if (position.x() > 0) {
            return position.left(1)
        }
        else{
            return position
        }
    }
}

object derecha {
    method siguiente(position) {
        if (position.x() < game.width() - 1) {
            return position.right(1)
        }
        else{
            return position
        }
    }
}