import elementos.*

object macaria {
	var nivelIra= 10
	var property disfraces = [ ]
	var caramelos = 0
	
	method disfraces(){
		return disfraces
	}
	
	method caramelos(){
		return caramelos
	}
	
	method capacidadSusto(){
		return nivelIra + disfraces.sum({disfraz => disfraz.nivelSusto()})
	}
	
	method disfrazar(disfraz){
		disfraces.add(disfraz)
	}
	
	method recibirCaramelos(cantidad){
		caramelos += (cantidad - cantidad/4).div(1)
	}
	
	method dejarDeUsarMenosEfectivo(){
		const menosEfectivo = disfraces.min({disfraz => disfraz.nivelSusto()})
		disfraces.remove(menosEfectivo)
	}
	
}

object pancracio {
	var cantidadDeUs = 4
	var property disfraces =  [mascaraDracula]
	var caramelos = 0
	
	method caramelos(){
		return caramelos
	}
	
	method disfraces(){
		return disfraces
	}
	
	method capacidadSusto(){
		return cantidadDeUs + disfraces.get(0).nivelSusto()
	}
	
	method disfrazar(disfraz){
		disfraces.clear()
		disfraces.add(disfraz)
	}
	
	method recibirCaramelos(cantidad){
		caramelos += cantidad
	}

	method quitarDisfraz(_disfraz){
		cantidadDeUs += 2
	}
	
}

// El chico inventado .

object pedro {
	var property disfraces = []
	var caramelos = 0
	
	method caramelos(){
		return caramelos
	}
	
	method recibirCaramelos(cantidad){
		caramelos += (cantidad/4).div(1)
	}
	
	method capacidadSusto(){
		return if(disfraces.isEmpty()) 0 else disfraces.sum({disfraz => disfraz.nivelSusto()})
	}
	
	method disfrazar(disfraz){
		disfraces.add(disfraz)
	}
	
	method tirarTodosLosDisfraces(){
		disfraces.clear()
	}
	
	method disfraces(){
		return disfraces
	}
	
}

