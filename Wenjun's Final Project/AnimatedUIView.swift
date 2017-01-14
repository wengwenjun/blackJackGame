//
//  AnimatedUIView.swift
//  Wenjun's Final Project
//
//  Created by Wenjun Weng on 3/14/16.
//  Copyright © 2016 DePaul  University. All rights reserved.
//

import UIKit

class AnimatedUIView: UIView {
    override func draw(_ rect: CGRect) {
        let rand = Int(arc4random_uniform(51))
        let image = UIImage(named: cards[rand].name)
        let rect = CGRect(x: 0, y: 0, width: 150, height: 200)
        image?.draw(in: rect)
    }
}
