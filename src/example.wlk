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
	//otra opcion
	method saludableBooleano() {
		return peso.between (20,150)
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
	method soplarCasa(){
		peso= 0.max(peso - casa.resistencia())
		//casa.resistencia()= 0 => nose como borrar la casa
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
//Cuando el lobo sople una casa, pierde tanto peso como la resistencia de la casa más el peso de los ocupantes.
//La casa de paja no resiste nada, la de madera tiene resistencia 5 y la de ladrillos resiste 2 por cada ladrillo.

object casa {
	var resistencia = 0
	var material = paja
	
	method resistencia(){
		return resistencia
	}
	method material(){
		return material
	}
	method esCasaDeLadrillos(){
		return material == ladrillo
	}
	method formatoCasa(tipoMaterial, tipoOcupante, cantOcupas){    //defino como esta conformada la casa
		material = tipoMaterial
		if (self.esCasaDeLadrillos())resistencia= ladrillo.resistencia() + tipoOcupante.peso()*cantOcupas
		else resistencia = material.resistencia() + tipoOcupante.peso()*cantOcupas
	}
}
object chanchito{ method peso()			{return 2}	}
object paja		{ method resistencia()	{return 0}	}
object madera 	{ method resistencia()	{return 5}	}
object ladrillo{
	method resistencia() {
		return 2 * self.cantLadrillos()
	}
	method cantLadrillos(){
		return 10 //cantidad de ladrillos de la casa 
	}
}
