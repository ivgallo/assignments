import UIKit

enum Velocidades :Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad:Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial:.Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) {
    
        var velocidadActualEnTexto = ""
        let velocidadActual = self.velocidad.rawValue
        
        switch self.velocidad {
        case .Apagado:
            velocidadActualEnTexto = "Apagado"
            self.velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidadActualEnTexto = "Velocidad baja"
            self.velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidadActualEnTexto = "Velocidad Media"
            self.velocidad = .VelocidadAlta
        case .VelocidadAlta:
            velocidadActualEnTexto = "Velocidad Alta"
            self.velocidad = .VelocidadMedia
        }
        
        
        return (actual:velocidadActual, velocidadEnCadena:velocidadActualEnTexto)
        
    }
    

}

let auto = Auto()

for index in 1...20 {
    var resultado = auto.cambioDeVelocidad()
    print("\(index). \(resultado.actual), \(resultado.velocidadEnCadena)")
}

