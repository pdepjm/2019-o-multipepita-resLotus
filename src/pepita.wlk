object pepita {
	var energia = 100
	
	method energia(_nuevaEnergia) { energia = _nuevaEnergia }

	method estaCansada() {
		return energia < 50
	}
	
	method estaFeliz() {
		return (energia >= 500 && energia <= 1000)
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method cuantoQuiereVolar() {
		var extra = 0
		if(energia >= 300 && energia <= 400)
			extra += 10
		if(energia % 20 == 0)
			extra += 15
		return (energia / 5 + extra)
	}
	
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras() {
		if (self.estaCansada())
			self.come(alpiste)
		else if (self.estaFeliz())
			self.vola(8)
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var seco = true
	
	method energiaQueOtorga() {
		if (seco)
			return 20
		return 15
	}
	
	method secarse() {
		seco = true
	}
	
	method mojarse() {
		seco = false
	}
}

object canelones {
	var salsa = true
	var queso = true
	var extra = 0
	
	method energiaQueOtorga() { 
		if (salsa) 
			extra += 5
		if (queso) 
			extra += 7
		return 20 + extra
	}
		
	method ponerSalsa() {
		salsa = true
	}
	
	method sacarSalsa() {
		salsa = false
	}
	
	method ponerQueso() {
		queso = true
	}
	
	method sacarQueso() {
		queso = false
	}
}

object roque {
	method entrenar() {
		pepita.vola(10)
		pepita.come(alpiste)
		pepita.vola(5)
		pepita.haceLoQueQuieras()
	}
}