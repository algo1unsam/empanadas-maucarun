object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var dinero=0
	
	method sueldo() { 
		return sueldo
	}
	method sueldo(nuevoValor) { 
		sueldo=nuevoValor
	}
	method cobrarSueldo(){
		dinero=dinero+sueldo
	}
	method totalCobrado(){
		return dinero
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var sueldo=15000
	var deuda=0
	var dinero=0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo(){
		// no se supone que le sueldo es lo que devuelve sueldo() ??
		// entiendo que este es un valor para arrancar ponele pero después hay que usar lo que de la cuenta
		sueldo=15000
		// acá no habría que usar dinero? a lo mejor tengo dinero acumulado de antes
		// sueldo no relfeja la cantidad de palta que TENGO, sino lo que sumo este mes
		// a lo mejor tengo una deuda mucho mayor a mi sueldo, y la debería poder pagar
		// si tengo suficientes ahorros
		if (sueldo>=deuda){
			sueldo=sueldo-deuda
			deuda=0
		}
		else{
			deuda=deuda-sueldo
			sueldo=0
		}
		dinero=dinero+sueldo
	}
	method gastar(cuanto){
		if (dinero<cuanto){
			deuda=deuda-(dinero-cuanto) // acá los () estan demás
			dinero=0
		}
			else{
				dinero=dinero-cuanto	
			}
	}
	method totalDeuda(){
		return deuda
	}
	method totalDinero(){
		return dinero
	}
}

object galvan {
	var dinero = 300000
	method dinero() { 
		return dinero
	}
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
