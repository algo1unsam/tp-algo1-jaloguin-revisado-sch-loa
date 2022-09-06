import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 22

	method tolerancia(){
		return tolerancia
	}
	
	method serAsustadoPor(integrante){
		
		if(tolerancia < integrante.capacidadSusto()){
			integrante.recibirCaramelos((integrante.capacidadSusto() - tolerancia))
		}
		
		tolerancia -= 1			
	}

	method caramelosAEntregar(integrante){
		const cantCaramelos = (integrante.capacidadSusto() - tolerancia).abs()
		return if(tolerancia < integrante.capacidadSusto()) cantCaramelos else 0
	
	}

}
