//
//  ColoredButton.swift
//  Simon
//
//  Created by Tweety iMac on 12/07/2023.
//

import UIKit

class ColoredButton: UIButton {

    let lightUpTime: TimeInterval = 0.4 //condicional para que los botonesColores se iluminen cuatro segundos una vez que son presionados
    
    func lightUp() { //función para animar esa iluminasión
        UIView.animateKeyframes(withDuration: lightUpTime * 2, delay: 0, options: [], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5) { //fortograma clave para animar de 0 a 50%
                self.backgroundColor =  UIColor (hue: 198/360, saturation: 80/100, brightness: 100/100, alpha: 1.0) //propiedadas que inican lo que seria el color azul brillante
            }
                UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5){
                    self.backgroundColor = .systemBlue
                
                }
                
            
            
        }, completion: nil)
    }

}
