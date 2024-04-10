object olivia{
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion(){
		return gradoDeConcentracion
	} 
	
	method recibirMasaje(){
		gradoDeConcentracion += 3
	}
	
	method discutir(){
		gradoDeConcentracion -= 1 
	}
	
	method seDaUnBanioDeVapor(){}
	
}

object bruno{
	var peso = 55000
	var estaFeliz = true
	var tieneSed = false
	
	method recibirMasaje(){
		estaFeliz = true
	}
	
	method seDaUnBanioDeVapor(){
		peso -= 500
		tieneSed = true
	}
	
	method tomaAgua(){
		tieneSed = false
	}
	
	method comeFideos(){
		peso += 250
		tieneSed = true
	}
	
	method corre(){
		peso -= 300
	}
	
	method veElNoticiero(){
		estaFeliz = false
	}
	
	method estaPerfecto(){
		return (estaFeliz and not tieneSed and (peso > 50 and peso < 70))
	}
	
	method mediodiaEnCasa(){
		self.tomaAgua()
		self.comeFideos()
		self.veElNoticiero()
	}
}

object ramiro{
	var nivelContractura = 0
	var tienePielGrasosa = false
	
	method recibirMasaje(){
		nivelContractura = 0.max(nivelContractura - 2)
	}
	
	method seDaUnBanioDeVapor(){
		tienePielGrasosa = false
	}
	
	method comerBigMac(){
		tienePielGrasosa = true
	}
	
	method bajarALaFosa(){
		tienePielGrasosa = true
		nivelContractura += 1
	}
	
	method jugarPaddle(){
		nivelContractura += 3
	}
	
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}

object spa{
	method atender(cliente){
		cliente.recibirMasaje()
		cliente.seDaUnBanioDeVapor()
	}
}