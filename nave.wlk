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

  method vitalidadEquilibrada(){

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