//
//  GameBoardViewController.swift
//  Simon
//
//  Created by Tweety iMac on 12/07/2023.
//

import UIKit

class GameBoardViewController: UIViewController {
    
    // MARK: -Outlets
    
    @IBOutlet weak var blueButton: ColoredButton!
    
    // MARK: - Properties
    
    var timer: Timer?
    
    var gameBrain = GameBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        blueButton.backgroundColor = UIColor(hue: 198/360, saturation: 80/100, brightness: 70/100, alpha: 1.0)
        resetForNewDemo()
    }
    @IBAction func coloredButtonTapped (_ sender: Any){
        print("Button tapped")
    }
    

    private func resetForNewDemo (){ //método para que se reinicie una nueva secuencia de un nuevo nivel
        timer?.invalidate() //para frenar otro temporizado que estuviera corriedo
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(demonstrateCycle), userInfo: nil, repeats: false)
    } //la sintaxis del "selector" con # es para poner una función (demonstrateCycle) dentro de otra funcion (resetForNewDemo)
   
    @objc private func demonstrateCycle(){ //método de la secuencia que se le muestra primero al jugador
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(animateButton), userInfo: nil, repeats: true)
    }
    @objc private func animateButton() {
        blueButton.lightUp()
        timer?.invalidate()
        timer = nil
        
        
    }
}
