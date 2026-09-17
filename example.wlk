object casa{


    var suciedad = 100
    var cuidador = tom
    var quilombero = jerry
    var pandillaQuilomberos = pandilla1
    

    method setterTestLimpiar(){

        suciedad = 0

    }

    method pandillaQuilomberos(){

        return pandillaQuilomberos

    }

    method quilombero(){

        return quilombero


    }

    method cuidador(){

        return cuidador


    }

    method suciedad(){

        return suciedad

    }

    method reducirSuciedad(cantidad){

        suciedad -= cantidad

    }

    method pasarDia(){


        cuidador.limpiarCasa()
        cuidador.sacar(quilombero)

    }

    method pasarNoche(){

        cuidador.dormir()
        quilombero.hacerQuilombo()


    }

    method quilomboPandilla(){

        pandillaQuilomberos.hacerQuilombo()


    }


}



object tom{

    var energia = 40

    method energia(){


        return energia

    }

    method limpiarCasa(){

        casa.reducirSuciedad(100)
        energia -= 40

    }

    method velocidad(){

        return 5 + (energia/10)


    }

    method dormir(){

        energia += 50


    }

    method sacar(quilombero){

        return self.velocidad() > quilombero.velocidad()


    }

    method interrumpirSuenio(){

        energia -= 20


    }


}


object jerry{


    var peso = 0

    method hacerQuilombo(){

        casa.reducirSuciedad(-110)
        peso += 1

    }

    method velocidad(){

        return 10 - peso


    }

}

object tuffy{


    method velocidad(){

        return 10

    }

    method hacerQuilombo(){

        casa.cuidador().interrumpirSuenio()


    }



}


object roboCat{


    method limpiarCasa(){

    casa.reducirSuciedad(casa.suciedad())

    }

    method sacar(quilombero){

        return true

    }

    


    method interrumpirSuenio(){



    }


}

object garfield{

    var tieneHambre = true

    method hacerQuilombo(){

        casa.reducirSuciedad(-200)
        tieneHambre = false

    }

    method velocidad(){

        return 2


    }

   

}

object john{

    
    
    method limpiarCasa(){

        casa.reducirSuciedad(115)

    }

    method sacar(quilombero){

        return quilombero == garfield

    }


}


object pandilla1{

    var miembros = [garfield,garfield,jerry,garfield]


    method hacerQuilombo(){

        miembros.forEach({miembro => miembro.hacerQuilombo()})

        if(miembros.size() > 3){

            casa.cuidador().interrumpirSuenio()


        }

    }

}
