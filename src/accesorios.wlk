// Se deben contemplar los siguientes accesorios

// Farolito: pesa 0.5 kg, no lleva carga (o sea, lleva 0 kg de carga), es luminoso.
class Farolito {
	method peso() = 0.5
	method carga() = 0
	method esLuminoso() = true
}

// Canasto: de cada canasto se informa el volumen. El peso se calcula como volumen / 10, la carga como volumen * 2. No es luminoso.
// Morral de bici: para cada uno se informa el largo (en centímetros), y si tiene ojo de gato o no. El peso es fijo, 1.2 kg. La carga se calcula como largo / 3. Es luminoso si tiene ojo de gato.