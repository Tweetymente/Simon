//
//  HighScore.swift
//  Simon
//
//  Created by Tweety iMac on 11/07/2023.
//

import Foundation

struct HighScore {
    let initials: String //Para pedir las iniciales del jugador
    let points: Int  // Puntaje de la partida para la tabla de clasificación
    
    var score: String {
        return "\(points) pts"
    }
    
}
