//
//  PlayViewController.swift
//  Wenjun's Final Project
//
//  Created by Wenjun Weng on 3/14/16.
//  Copyright © 2016 DePaul  University. All rights reserved.
//

import UIKit

var player1Done = false
var player2Done = false
var player1Score = 0
var player2Score = 0

class PlayViewController: UIViewController {
    var card: Card?
    var status = ""
    
    @IBOutlet weak var Player1Label: UILabel!
    @IBOutlet weak var Stop1Label: UIButton!
    @IBOutlet weak var NewCard1Label: UIButton!
    @IBOutlet weak var ScoreBoard1Label: UITextField!
    @IBOutlet weak var ImageView1Label: UIImageView!
    
    @IBOutlet weak var Player2Label: UILabel!
    @IBOutlet weak var ScoreBoard2Label: UITextField!
    @IBOutlet weak var Stop2Label: UIButton!
    @IBOutlet weak var NewCard2Label: UIButton!
    @IBOutlet weak var ImageView2Label: UIImageView!
    
    @IBAction func newCardforPlayer1(_ sender: UIButton) {
        if player1Done {
            return
        }
        let rand = Int(arc4random_uniform(51))
        ImageView1Label.image = UIImage(named: cards[rand].name)
        player1Score += cards[rand].value
        ScoreBoard1Label.text = "\(player1Score)"
        if player1Score > 21 {
            let alertController = UIAlertController(title: "Game Over!", message: "Player2 wins!", preferredStyle: .alert)
            let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
            alertController.addAction(okayAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func stopPlayer1(_ sender: UIButton) {
        if player1Done {
            return
        }
        player1Done = true
        if player2Done {
            compareScore()
        }
    }
    
    @IBAction func newCardforPlayer2(_ sender: UIButton) {
        if player2Done {
            return
        }
        let rand = Int(arc4random_uniform(51))
        ImageView2Label.image = UIImage(named: cards[rand].name)
        player2Score += cards[rand].value
        ScoreBoard2Label.text = "\(player2Score)"
        if player2Score > 21 {
            let alertController = UIAlertController(title: "Game Over!", message: "Player1 wins!", preferredStyle: .alert)
            let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
            alertController.addAction(okayAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func stopPlayer2(_ sender: UIButton) {
        if player2Done {
            return
        }
        player2Done = true
        if player1Done {
            compareScore()
        }
    }
    
    func compareScore() {
        var message = ""
        if player1Score > player2Score {
            message = "Player1 wins!"
        }
        else if player2Score > player1Score{
            message = "Player2 wins!"
        }
        else {
            message = "Draw Game!"
        }
        let alertController = UIAlertController(title: "Game Over!", message: message, preferredStyle: .alert)
        let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
        alertController.addAction(okayAction)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func goBack(_ sender: UIButton) {
        dismiss(animated: true, completion: nil);
    }
    
    override func viewWillAppear(_ animated: Bool) {
        ScoreBoard1Label.text = "\(player1Score)"
        ScoreBoard2Label.text = "\(player2Score)"
        
    }
    
}
