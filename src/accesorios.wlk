/*  Se deben contemplar los siguientes accesorios

 Pesa 0.5 kg, no lleva carga (o sea, lleva 0 kg de carga), es luminoso. */
class Farolito {
	method peso() = 0.5
	method carga() = 0
	method esLuminoso() = true
}
 
/* El peso se calcula como volumen / 10
 la carga como volumen * 2. No es luminoso. */
class Canasto {
	const volumen
	method peso() = volumen / 10
	method carga() = volumen * 2
	method esLuminoso() = false  
}

/*  
 Para cada uno se informa el largo (en centímetros), 
 y si tiene ojo de gato o no. 
 El peso es fijo, 1.2 kg. La carga se calcula como largo / 3. 
 Es luminoso si tiene ojo de gato. */
 
class MorralDeBici {
	const largo
	const tieneOjoDeGato 
	method peso() = 1.2
	method carga() = largo / 3
	method esLuminoso() = tieneOjoDeGato
}


/*
Implementariamos el armado de una nueva clase, de nombre "accesorios" y a esta nueva clase darle cartacticas las cuales se relacionen
con los accesorios para bicicletas creados anteriormente. Esto permite que el codigo echo hasta el momento no genere cambios con el nuevo accesorio.

*/