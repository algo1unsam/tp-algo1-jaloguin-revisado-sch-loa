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
	method normaSinRepetidos(){}
	method todosLosDisfraces(){}
	method disfracesRepetidos(){}
}

