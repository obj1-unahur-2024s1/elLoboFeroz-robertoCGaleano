/** First Wollok example */
object loboFeroz {
	var peso= 10
	
	method peso(){
		return peso
	}
	method saludable() {
		return peso.between (20,150)
	}
	method pesoNuevo(numero) {
		peso= numero
	}
	method crisis() {
		peso= 10
	}
	
	method comer(pesoIngerido) {
		peso= peso + pesoIngerido*0.1
	}
	method correr() {
		peso= peso-1
	}
}

object caperucita {
	var peso= 60
	
	method peso() {
		return peso + canasta.peso()
	}
}

object canasta {
	var peso= 0
	
	method peso(){
		return peso
	}
	
	method agregarManz(cantManzanas) {
		peso= peso + cantManzanas * 0.2
	}
}
