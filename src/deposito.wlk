import bicis.*

class Deposito {
	
	var bicicletas = []
	
	method bicicletas() = bicicletas
	// Agrega una bicicleta al depósito
	method agregarBiciADeposito(unaBici){ bicicletas.add(unaBici) }
	
	// Quita una bicicleta del depósito
	method removerBiciDeDeposito(unaBici){ bicicletas.remove(unaBici) }
	
	// Colección de sus bicis rápidas. Una bici se considera rápida si su velocidad de crucero es mayor a 25.
	method bicisRapidas() = bicicletas.filter{ bici => bici.velocidad() > 25 }
	
	// La colección formada por la marca de cada una de las bicis, sin repetidos.
	method marcasDeBicis() = bicicletas.map{ bici => bici.marca()}.asSet() 
	
	// Si el depósito es nocturno o no. La condición es que todas sus bicis tengan luz.
	method esNocturno() = bicicletas.all{ bici => bici.tieneLuz() }
	
	// Si tiene bicicleta para llevar una carga expresada en kg. 
	// La condición es que para al menos una de las bicis del depósito, la carga que puede llevar sea mayor a los kilos que se piden.
	method algunaBiciPuedeLlevar(carga) = bicicletas.any{ bici => bici.carga() > carga }
	
	// Retorna la bicicleta con mayor velocidad
	method laMasRapida() = bicicletas.max{ bici => bici.velocidad() }
	
	// Retorna la marca de la bicicleta más rápida
	method marcaDeLaMasRapida() = self.laMasRapida().marca()
	
	// Retorna las bicicletas que tengan un largo mayor que el valor especificado
	method bicisDeLargoMayorQue(largo) = bicicletas.filter{ bici => bici.largo() > largo }
	
	// Suma la carga de las bicicletas que tengan un largo mayor a 170
	method cargaTotalDeBicisLargas() = self.bicisDeLargoMayorQue(170).sum{ bici => bici.carga() }
	
	// Retorna la cantidad de bicicletas sin accesorios en el depósito
	method cantidadSinAccesorios() = bicicletas.count{ bici => bici.accesorios().isEmpty() }
	
	// retorna si hay bicicletas compañeras en el deposito
	method hayCompannera() = bicicletas.any{b => b.esCompannera(bicicletas).size() > 1}
	
	
	//method parDeBicis() = bicicletas.filter{pares => pares.esCompannera(bicicletas).size() > 1}
}
