class Depositos {
	
	var bicis = #{}
	
method agregarBiciADeposito(unaBici){ bicis.add(unaBici)}
method removerBiciDeDeposito(unaBici){bicis.remove(unaBici)}
method bicisRapidas(){return bicis.filter{b=>b.velocidad() > 25}}
method marcaBicis(){return bicis.map{b=>b.marca()}.asSet()}
method esNocturno(){return bicis.all{b=>b.tieneLuz()}}
method biciQuePuedaLLevar(carga){return bicis.any{b=>b.carga() > carga }}	
method laMasRapida(){return bicis.max{b=>b.velocidad()}}
method marcaDeLaMasRapida(){return self.laMasRapida().marca()}
method bicisDeLargoMayorA(largo){return bicis.filter{b=>b.largo() > largo}}
method cargaTotalDeBicisLargas(){return self.bicisDeLargoMayorA(170).sum{b=>b.carga()}}
method cantidadSinAccesorios(){return bicis.count{b=>b.accesorios().isEmpty()}}
}
