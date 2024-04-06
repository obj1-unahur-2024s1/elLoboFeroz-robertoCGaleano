/** First Wollok example */
object loboFeroz {
	var peso= 10
	
	method peso(){
		return peso
	}
	method saludable() {
		var saludable= "No esta Saludable"
		if (peso.between (20,150)) saludable= "Esta Saludable"
		return saludable
	}
	method pesoNuevo(numero) {
		peso= numero
	}
	method crisis() {
		peso= 10
	}
	
	method comer(personaje){
		peso= peso + personaje.peso() * 0.1
	}
	method correr() {
		peso= peso - 1
	}
}

object caperucita {
	const peso= 60
	var pesoConCanasta= peso
	
	method peso(){
		return pesoConCanasta
	}
	method actualizarPeso(){
		pesoConCanasta= peso + canasta.peso()
	}
}

object canasta {
	var peso= 0
	method peso(){
		return peso
	}
	
	method ponerFruta(fruta,cantidad){
		peso= 1.2.min(peso + fruta.peso() * cantidad)
		caperucita.actualizarPeso()
	}
	method sacarFruta(fruta, cantidad) {
		peso= 0.max(peso - fruta.peso() * cantidad)
		caperucita.actualizarPeso()
	}
}

object manzana {
	method peso ()	{return 0.2}
}
object abuelita {
	method peso ()	{return 50}
}
object cazador {
	method peso ()	{return 80}
}