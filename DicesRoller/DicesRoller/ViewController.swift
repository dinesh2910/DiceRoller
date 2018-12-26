//
//  ViewController.swift
//  DicesRoller
//
//  Created by dinesh danda on 12/26/18.
//  Copyright © 2018 Dinesh Danda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["Dice1","Dice2","Dice3","Dice4","Dice5","Dice6" ]

    @IBOutlet var logo1: UIImageView!
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateimages()
        
    }


    @IBAction func dicePressedaction(_ sender: Any) {
        updateimages()
    }
    
    func updateimages() {
        
    randomDiceIndex1 = Int(arc4random_uniform(6),
    randomDiceIndex2 = Int(arc4random_uniform(6),

    diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1]),
    diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
}
