import pasajero.*
object nave {

   const property pasajeros = [neo,morfeo,trinity]

   //method pasajeros(){return pasajeros}

   method subirA(unPasajero){
    if(self.estaEnLaNave(unPasajero)){
       self.error("El pasajero ya está en la nave")
    }
    pasajeros.add(unPasajero)
   }

   method estaEnLaNave(unPasajero){
      return pasajeros.contains(unPasajero)
   }

   method bajarA(unPasajero){
    if( not self.estaEnLaNave(unPasajero)){
       self.error("El pasajero no está en la nave")
    }
    pasajeros.remove(unPasajero)
   }
  
   method cantidadDePasajeros(){
    return pasajeros.size()
  }
  //pasajero con mayor vitalidad
  method pasajeroMasVital(){
     return  pasajeros.max({p => p.vitalidad()})
  }

  method estaElElegido(){
     return pasajeros.any({p => p.esElElegido()})
  }

  method estaEquilibrada(){
    return  self.pasajeroMasVital().vitalidad() <= self.pasajeroMenosVital() *2
  }

  method pasajeroMenosVital(){
     return  pasajeros.min({p => p.vitalidad()})
  }

  method pasajeroValioso(){
    return pasajeros.filter({p => p.vitalidad() >= 5})
  }

  method hayAlgunoAlHorno(){
    return pasajeros.any({p => p.vitalidad() == 0})
  }

  method todosPuedenContraUnAgente(){
    return pasajeros.all({p => p.viltalidad() > 2})
  }

  method vitalidadPromedio(){
    return pasajeros.average({p => p.vitalidad()})
  }

  method cuantosConVitalidadPar(){
    return pasajeros.count({p => p.vitalidad().even()})
  }

  method simulacroDeCombate(){
    pasajeros.forEach({p => p.saltar()p.saltar()p.saltar()})
  }

  method vitalidadesDePasajeros(){
    return pasajeros.map({p => p.vitalidad()}) //devuelve otra lista
  }

  method ordenarDeMenorAMayorVitalidad(){
    pasajeros.sortBy({p1,p2 => p1.vitalidad() < p2.vitalidad()})
  }

  method elegirUnPasajeroAlAzar(){
    
  }


  method chocarNave(){
    return pasajeros.forEach({p => p.saltar()})
           pasajeros.forEach({p => self.bajarA(p)})
          // pasajeros.forEach({p => p.bajarDeLaNave()})
          // pasajeros.clear() --> mas fácil
  }

  method acelerarNave(){
   self.losQueNoSonElElegido().forEach({p => p.saltar()}) 
  }

  method losQueNoSonElElegido(){
    return pasajeros.filter({p => not p.esElElegido()})
  }
//crea una lista temporal para chequear, no altera la lista original, le pasa instrucciones a cada pasajero
}


//terminal
//nave.vitalidadesDePasajeros() --> [10,8,0]
//mave.ordenarDeMenorAMayorVitalidad() --> tilde verde
//nave.vitalidadesDePasajeros() --> [0,8,10]