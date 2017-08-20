//
//  ViewController.swift
//  Dicee
//
//  Created by Christopher Adams on 8/20/17.
//  Copyright © 2017 ChristopherAdams.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    // Create array of dice.
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    // Outlet that connects diceImageView1 and diceImageView2 to the UIImageView
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Action created for Roll button.
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages();
    }
    
    //  Updates the dice images.
    func updateDiceImages() {
        // Assign a random num from 1 to 5. Cast to Int.
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        // Set the image to dice2 stored in array.
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}









