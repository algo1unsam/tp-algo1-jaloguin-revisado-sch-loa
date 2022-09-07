import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var integrantes = []
	var disfraces = []
	
	method agregarIntegrantes(_integrantes){
		integrantes.addAll(_integrantes)
		disfraces.map({i => i.disfraces()})
	}
	
	method capacidadSusto(){
		return integrantes.sum({integrante => integrante.capacidadSusto()})
	}
	method caramelos(){
		return integrantes.sum({integrante => integrante.caramelos()})
	}
	method lider(){
		return integrantes.max({integrante => integrante.capacidadSusto()})
	}
	method recibirCaramelos(cantidad){
		self.lider().recibirCaramelos(cantidad)
	}
	method normaSinRepetidos(){
		disfraces = disfraces.flatten() 
	}
	method todosLosDisfraces(){
		return disfraces
	}
	method disfracesRepetidos(){	
		disfraces.find({disfraz =>})
		return 
	}
}

object barrio {
	var chicos = []
	
	method chicos(integrantes){
		chicos.addAll(integrantes)
	}
	method chicosConMasCaramelos(cantidad){
	    chicos.sortBy({a, b => a.caramelos() > b.caramelos()})
		return chicos.take(cantidad)
	}
	
	method algunoMuyAsustador(){
		return chicos.any({i => i.capacidadSusto() > 42})
	}
}

