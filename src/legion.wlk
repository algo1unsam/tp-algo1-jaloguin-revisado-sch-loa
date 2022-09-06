import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var integrantes = []
	
	method agregarIntegrantes(_integrantes){
		integrantes.addAll(_integrantes)
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
		return []
	}
	method todosLosDisfraces(){
		return integrantes.map({i => i.disfraces()})
	}
	method disfracesRepetidos(){
		return []
	}
}

object barrio {
	var chicos = []
	
	method chicos(integrantes){
		chicos.addAll(integrantes)
	}
	method chicosConMasCaramelos(cantidad){
		var chicosEtc = chicos.filter({i => i.caramelos > cantidad})
		return chicosEtc
	}
	
	method algunoMuyAsustador(){
		return chicos.any({i => i.capacidadSusto > 42})
	}
}

