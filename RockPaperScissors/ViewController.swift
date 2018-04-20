//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Student on 2018-04-11.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var computerImage: UIImageView!
    @IBOutlet weak var gameText: UITextField!
    //example array code
    //var soundfile :[String] = ["cartoon001", "cartoon010", "cartoon026", "cartoon048"];
    var imageFile :[String] = ["rock2", "scissors", "paper"];

    
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
     //UIImage(named:"B2") sample code
    @IBAction func RockButton(_ sender: Any) {
        playerImage.image = UIImage(named: "rock2")
        var randomint = Int(arc4random_uniform(3));
        computerImage.image = UIImage(named: imageFile[randomint])
       
        if randomint == 0 {
            gameText.text = "Game Is A Tie!"
        }
        else if randomint == 1{
            gameText.text = "You Win, Rock Crushes Scissors!"
        }
        else if randomint == 2 {
            gameText.text = "You Lose, Paper Smoothers Rock!"
        }
    }


    @IBAction func PaperButton(_ sender: Any) {
        playerImage.image = UIImage(named: "paper")
        let randomint = Int(arc4random_uniform(3));
        computerImage.image = UIImage(named: imageFile[randomint])
        
        if randomint == 0 {
            gameText.text = "You Win, Paper Smoothers Rock!!"
        }
        else if randomint == 1{
            gameText.text = "You Lose, Scissors Cut Paper!"
        }
        else if randomint == 2 {
            gameText.text = "Game Is A Tie!"
        }
    }
    
    @IBAction func ScissorsButton(_ sender: Any) {
        playerImage.image = UIImage(named: "scissors")
        let randomint = Int(arc4random_uniform(3));
        computerImage.image = UIImage(named: imageFile[randomint])
        
        if randomint == 0 {
            gameText.text = "You Lose, Rock Crushes Scissors!"
        }
        else if randomint == 1{
            gameText.text = "Game is A Tie!"
        }
        else if randomint == 2 {
            gameText.text = "You Win, Scissors Cuts Paper!"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

