//
//  ViewController.swift
//  Dicee
//
//  Created by Christopher Mena on 9/6/19.
//  Copyright © 2019 Christopher Mena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var random_dice_index1: Int = 0
    var random_dice_index2: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    //Shake detection
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        random_dice_index1 = Int.random(in: 0 ... 5) + 1
        random_dice_index2 = Int.random(in: 0 ... 5) + 1
        
        print("Dice1: \(random_dice_index1)") // Print random number value
        print("Dice2: \(random_dice_index2)") // Print random number value
        print("-----------------------------")
        //Change image
        diceImageView1.image = UIImage(named: "dice\(random_dice_index1)")
        diceImageView2.image = UIImage(named: "dice\(random_dice_index2)")
    }

}

