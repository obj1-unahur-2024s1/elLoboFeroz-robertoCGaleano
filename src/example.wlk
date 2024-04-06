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
}
