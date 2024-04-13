class Historia {
	method empezar(){
		lobo.correr() //El lobo va corriendo hacia el bosque
		lobo.correr() //El lobo corre a la casa de la abuelita
		lobo.comer(Abuelita,1) //El lobo se come a la abuelita y se disfraza de ella
		lobo.comer(Caperusita, 1) //Lobo se come a Caperusita
		lobo.comer(Manzana, 6) //Lobo se come la canasta con las 6 manzanas
		Cazador.disparar()
		Cazador.disparar()
		lobo.crisis()
		lobo.correr()
	}
}

object lobo {
	var salud = 10
	const saludInicial = 10
	var saludable = false
	
	method comer(comida, cantidad){
		salud = (salud + comida.comidaPorPeso() * 0.10) * cantidad
	}
	
	method correr(){
		salud -= 1
	}
	
	method crisis() {
		salud = saludInicial
	}
	method estaSaludable (){
		if (salud>10){
			return true
		}else return false
	}
	
	method verSalud (){
		return salud
	}
}

object Manzana {
	method comidaPorPeso (){
		return 0.2
	}
}

object Abuelita {
	method comidaPorPeso (){
		return 50
	}
}

object Caperusita {
	method comidaPorPeso (){
		return 60
	}
}

object Cazador {
	var balas = 2
	method disparar(){
		balas -= 1
	}
	method comidaPorPeso(){
		return 80
	}
}