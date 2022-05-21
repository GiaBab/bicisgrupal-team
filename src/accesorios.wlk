// Se deben contemplar los siguientes accesorios

// pesa 0.5 kg, no lleva carga (o sea, lleva 0 kg de carga), es luminoso.
class Farolito {
	method peso() = 0.5
	method carga() = 0
	method esLuminoso() = true
}

// se informa el volumen. 
// El peso se calcula como volumen / 10
// la carga como volumen * 2. No es luminoso.
class Canasto {
	var property volumen
	method peso() = volumen / 10
	method carga() = volumen * 2
	method esLuminoso() = false  
}

// Morral de bici: para cada uno se informa el largo (en centímetros), y si tiene ojo de gato o no. El peso es fijo, 1.2 kg. La carga se calcula como largo / 3. Es luminoso si tiene ojo de gato.