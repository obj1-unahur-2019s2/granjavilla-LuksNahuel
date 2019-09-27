import wollok.game.*

object hector {
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"
	
	const cosecha = []
	
	method regar() {
		if(self.plantasEnMiLugar().isEmpty()) {
			self.error("¡Nada para regar!")
		}
 		
 		const cultivo = self.plantasEnMiLugar().first()
 		
 		cultivo.regar()
 		
 		//objetos.filter{o => o != hector}.forEach{ o => o.regar() }
	}
	
	method plantasEnMiLugar() {
		return game.getObjectsIn(self.position()).filter{o => o != self}
	}
	
	method cosechar() {
		 if(self.plantasEnMiLugar().isEmpty()) {
		 	self.error("¡Nada para cosechar!")
		 }
		 const cultivos = self.plantasEnMiLugar().filter{p => p.listoParaCosechar()}
		 cosecha.addAll(cultivos)
		 cultivos.forEach{c => game.removeVisual(c)}
	}
}