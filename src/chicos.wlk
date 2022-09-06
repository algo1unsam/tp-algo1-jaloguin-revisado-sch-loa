import elementos.*

object macaria {
	var nivelIra= 10
	var disfraces = [ ]
	var property caramelos = 0
	
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
		self.validoDisfraz(disfraz)
		disfraces.add(disfraz)
	}
	
	method recibirCaramelos(cantidad){
		caramelos += cantidad - cantidad.div(4) 
	}
	
	method dejarDeUsarMenosEfectivo(){
		const menosEfectivo = disfraces.min({disfraz => disfraz.nivelSusto()})
		disfraces.remove(menosEfectivo)
	}
	
	method validoDisfraz(disfraz){
		if(disfraces.contains(disfraz)){
			self.error("Macaria ya tiene puesto ese disfraz.")
		}
	}
}

object pancracio {
	var cantidadDeUs = 4
	var disfraces =  [mascaraDracula]
	var property caramelos = 0
	
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
		self.validoDisfraz(disfraz)
		disfraces.clear()
		disfraces.add(disfraz)
	}
	
	method recibirCaramelos(cantidad){
		caramelos += cantidad
	}

	method quitarDisfraz(_disfraz){
		cantidadDeUs += 2
	}
	
	method validoDisfraz(disfraz){
		if(disfraces.contains(disfraz)){
			self.error("Pancracio ya tiene puesto ese disfraz.")
		}
	}
}

// El chico inventado .

object pedro {
	var disfraces = []
	var caramelos = 0
	
	method caramelos(){
		return caramelos
	}
	
	method recibirCaramelos(cantidad){
		caramelos += cantidad.div(4)
	}
	
	method capacidadSusto(){
		return if(disfraces.isEmpty()) 0 else disfraces.sum(disfraz => disfraz.nivelSusto())
	}
	
	method disfrazar(disfraz){
		self.validoDisfraz(disfraz)
		disfraces.add(disfraz)
	}
	
	method tirarTodosLosDisfraces(){
		disfraces.clear()
	}
	
	method disfraces(){
		return disfraces
	}
	
	method validoDisfraz(disfraz){
		if(disfraces.contains(disfraz)){
			self.error("Pancracio ya tiene puesto ese disfraz.")
		}
	}
}

