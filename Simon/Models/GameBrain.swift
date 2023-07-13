//
//  GameBrain.swift
//  Simon
//
//  Created by Tweety iMac on 12/07/2023.
//

import Foundation

final class GameBrain {
    
    enum SequenceColor: Int, CaseIterable {
        case red = 1
        case green
        case blue
        case yellow
        
    }
    //MARK: - Properties
    
    var points = 0 //Toda la lista va a empezar con 0
    var gameOver = false // bool para confirmar que se termino el juego
    var buttonSequence = [SequenceColor]()
    
    func addColorToSequence () {
       var added = false // bool para detener o continuar el loop repeat en caso que se repita o no el mismo color en la secuencia de colores
        repeat {
        if let randomColor = SequenceColor.allCases.randomElement(),
           randomColor != buttonSequence.last { //indicamos que tome un color de la lista y si el color aleatorio no es igual al ultimo elemento de la secuencia entonces es true
            buttonSequence.append(randomColor)
            added = true
        }
        } while !added //while avalua el verdadero o falso, si es falso el loop se sigue repitiendo hasta el color no sea repetido
        
       
        //buttonSequence.append(.blue)
    }
    
}
