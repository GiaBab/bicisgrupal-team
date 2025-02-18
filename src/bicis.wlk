/*
 De cada bicicleta se informa: el rodado (p.ej. 26), 
 el largo en centímetros (p.ej. 120 para una bici de 1.20 metros de largo), 
 la marca (p.ej. "Legnano"), y los accesorios. 
 Estos últimos (los accesorios) aportan distintas características a la bici en la que se instalan.
 A partir de estos datos, debe poder obtenerse la siguiente información referida a una bici:

 altura: se calcula como rodado * 2.5 + 15.
 velocidad de crucero: si la bici tiene más de 120 cm, entonces se calcula como rodado + 6, si no, como rodado + 2.
 carga: es la suma de la carga que puede llevar cada accesorio.
 peso: es la suma de rodado / 2 más el peso total de los accesorios.
 tieneLuz: es verdadero si al menos uno de los accesorios es luminoso.
*/
class Bici {
	
	// Significado desconocido
	const rodado
	
	// Largo de la bicicleta en centímetros
	const largo
	
	// Marca de la bicicleta
	const marca
	
	// Accesorios de la bicicleta
	var accesorios = []

	// Retorna los accesorios de la bicicleta
	method accesorios() = accesorios

	// Marca de la bicicleta
	method marca() = marca
	
	// Largo de la bisicleta
	method largo() = largo 
	// Altura de la bicicleta
	method altura() = rodado * 2.5 + 15
	
	// Velocidad de crucero
	method velocidad() = rodado + if(largo > 120) 6 else 2
	
	// Suma de la carga de cada accesorio
	method carga() = accesorios.sum{accesorio => accesorio.carga()}
	
	// Peso total de la bicicleta
	method peso() = rodado / 2 + self.carga()
	
	// Describe si la bicicleta tiene luz
	method tieneLuz() = accesorios.any{accesorio => accesorio.esLuminoso()}
	
	/*  cantidad de accesorios livianos de una bici,
	 o sea, la cantidad de accesorios cuyo peso es menor a 1 kg. */
	method cantidadAccesoriosLivianos() = accesorios.count{a => a.peso() < 1}
	
	// Devuelve la diferencia de la longitud entre la bicicleta y la bicicleta dada.
	method diferenciaDeLargoEntre(bici) = (self.largo() - bici.largo()).abs() 
	
	// Indica si la longitud de la bicicleta difiere por la de la longitud de la bicicleta dada.
    method esMasLarga(bici, distancia) = self.diferenciaDeLargoEntre(bici) <= distancia
	
    // Indica si la bicicleta tiene la misma marca que la bicicleta dada.
    method sonMismaMarca(bici) = self.marca() == bici.marca()
	
    // Dada una lista de bicicletas, filtra las que sean compañeras.
    method esCompannera(bicicletas) = 
    	bicicletas.filter{bici => self.sonMismaMarca(bici) && self.esMasLarga(bici, 10)}
}


// marca de bicis
object legnano {}
object olmo {}
