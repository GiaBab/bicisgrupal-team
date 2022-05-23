/*
Agregar al modelo los depósitos donde se guardan las bicis. Para cada depósito, se indica la colección de bicis que están ahí.

Agregar métodos para consultar, dado un depósito:

la colección de sus bicis rápidas. Una bici se considera rápida si su velocidad de crucero es mayor a 25.
la colección formada por la marca de cada una de las bicis, sin repetidos.
si el depósito es nocturno o no. La condición es que todas sus bicis tengan luz.
si tiene bicicleta para llevar una carga expresada en kg. La condición es que para al menos una de las bicis del depósito, la carga que puede llevar sea mayor a los kilos que se piden.
*/

class Deposito {
	var property bicicletas = #{}
	
	// Colección de sus bicis rápidas. Una bici se considera rápida si su velocidad de crucero es mayor a 25.
	method bicisRapidas() = bicicletas.filter{bici => bici.velocidad() > 25}
	
	// La colección formada por la marca de cada una de las bicis, sin repetidos.
	method marcasDeBicis() = bicicletas.map{bici => bici.marca()}.asSet()
	
	// Si el depósito es nocturno o no. La condición es que todas sus bicis tengan luz.
	method esNocturno() = bicicletas.all{bici => bici.tieneLuz()}
	
	// Si tiene bicicleta para llevar una carga expresada en kg. 
	// La condición es que para al menos una de las bicis del depósito, la carga que puede llevar sea mayor a los kilos que se piden.
	method algunaBiciPuedeLlevar(carga) = bicicletas.any{bici => bici.carga() > carga}
}