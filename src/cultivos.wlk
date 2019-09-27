import wollok.game.*

class Maiz {
	var esAdulta = false
	
	method regar() {
		esAdulta = true
	}
	
	method image() {
		return if(esAdulta) { "corn_adult.png" } else { "corn_baby.png" }
	}
	
	method listoParaCosechar() {
		return esAdulta
	}
}

class Trigo {
	var etapa = 0
	
	method regar() {
		etapa += 1
		if(etapa > 3) { etapa = 0 }	
	}
	
	method image() {
		return "wheat_x.png".replace("x", etapa.toString())
	}
	
	method listoParaCosechar() {
		return etapa >= 2
	}
}

class Tomaco {
	var property position 
	
	method image() {
		return "tomaco.png"
	}
	
	method regar() {
		if(position.y() != game.height() - 1) {
			position = position.up(1)
		}
	}
	
	method listoParaCosechar() = true
}