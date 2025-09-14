import wollok.game.*
import pepita.*


object manzana {
	const base= 5
	var madurez = 1
	var property position = game.at(5,5)
	
	method image() = "manzana.png"	
	
	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
		//madurez += 1
	}

}

object alpiste {
	var property position = game.at(1,8)

	method image() = "alpiste.png"

	method energiaQueOtorga() {
		return 20
	} 

}

