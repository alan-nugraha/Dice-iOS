//
//  ViewController.swift
//  Dice-iOS
//
//  Created by Alan Nugraha on 23/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageViewOne.image = #imageLiteral(resourceName: "DiceFour")
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceSix")
    }

    @IBAction func diceButtonPressed(_ sender: UIButton) {
        
        let diceImageArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        diceImageViewOne.image = diceImageArray.randomElement()
        diceImageViewTwo.image = diceImageArray.randomElement()
    }
    
}

