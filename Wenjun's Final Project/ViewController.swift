//
//  ViewController.swift
//  Wenjun's Final Project
//
//  Created by Wenjun Weng on 3/14/16.
//  Copyright © 2016 DePaul  University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animatedView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        animatedView.setNeedsDisplay()
        let swipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.handleSwipe(_:)))
        swipeRecognizer.numberOfTouchesRequired = 1
        swipeRecognizer.direction = [.down, .left, .right, .up]
        view.addGestureRecognizer(swipeRecognizer)
        
    }
    
    func handleSwipe(_ sender: UISwipeGestureRecognizer) {
        animatedView.setNeedsDisplay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        player1Score = 0
        player2Score = 0
        player1Done = false
        player2Done = false
    }


}

