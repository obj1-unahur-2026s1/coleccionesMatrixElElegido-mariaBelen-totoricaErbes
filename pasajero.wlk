import nave.*
object neo{
    //const esElegido = true
    var energia = 100

    method subirALaNave(){
        nave.subirA(self)
    }

    method bajarDeLaNave(){
        nave.bajarA(self)
    }

    method esElElegido() = true
   // method energia() = energia

    method saltar(){ 
        energia = energia / 2
    }
    method vitalidad(){
        energia = energia / 10
    }
}

object morfeo{
    var vitalidad = 8
    var estaCansado = false

    
    method subirALaNave(){
        nave.subirA(self)
    }

    method bajarDeLaNave(){
        nave.bajarA(self)
    }
    
    method esElElegido() = false

    method saltar(){ 
        vitalidad = (vitalidad - 1).max(0) //0<x<8
        estaCansado = not estaCansado
    }

    method vitalidad() = vitalidad

}

object trinity{

    method subirALaNave(){
        nave.subirA(self)
    }

    method bajarDeLaNave(){
        nave.bajarA(self)
    }

    method vitalidad() = 0

    method esElElegido() = false

    method saltar() {} //no hace nada

}