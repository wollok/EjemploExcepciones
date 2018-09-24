class NoSePuede inherits Exception {}
object pasaronCosas inherits Exception {}

object elMejorEquipo {
	var property inflacion = 15

	method gobernar(meses){
		if (inflacion >= 25) {
			throw new NoSePuede()
		}
		if (meses > 20) {
			throw pasaronCosas
		}
		inflacion += meses
	}
	
}

object pueblo {
	var estadoDeAnimo = "cambiemos"
	var property enojado = false

	method sobrevivir(meses){
	try {
		elMejorEquipo.gobernar(meses)
	}
	catch e : NoSePuede {
		estadoDeAnimo = "que se vayan todos"
		enojado = !enojado
	} 
//	catch e : Exception {
//		estadoDeAnimo = "estamos mal pero vamos bien"
//	}

	}
}



/*en los tests throwException*/
	