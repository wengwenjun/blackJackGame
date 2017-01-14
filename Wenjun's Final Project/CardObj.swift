//
//  CardObj.swift
//  Wenjun's Final Project
//
//  Created by Wenjun Weng on 3/14/16.
//  Copyright © 2016 DePaul  University. All rights reserved.
//

import Foundation
let cards = [
    Card(
        name: "RheartK",
        value: 13
    ),
    Card(
        name: "RheartQ",
        value: 12
    ),
    Card(
        name: "RheartJ",
        value: 11
    ),
    Card(
        name: "Rheart10",
        value: 10
    ),
    Card(
        name: "Rheart9",
        value: 9
    ),
    Card(
        name: "Rheart8",
        value:8
    ),
    Card(
        name: "Rheart7",
        value: 7
    ),
    Card(
        name: "Rheart6",
        value: 6
    ),
    Card(
        name: "Rheart5",
        value: 5
    ),
    Card(
        name: "Rheart4",
        value: 4
    ),
    Card(
        name:"Rheart3",
        value: 3
    ),
    Card(
        name: "Rheart2",
        value: 2
    ),
    Card(
        name:"RheartA",
        value: 1
    ),
    Card(
        name: "BspadeK",
        value: 13
    ),
    Card(
        name: "BspadeQ",
        value: 12
    ),
    Card(
        name: "BspadeJ",
        value: 11
    ),
    Card(
        name: "Bspade10",
        value: 10
    ),
    Card(
        name: "Bspade9",
        value: 9
    ),
    Card(
        name: "Bspade8",
        value:8
    ),
    Card(
        name: "Bspade7",
        value: 7
    ),
    Card(
        name: "Bspade6",
        value: 6
    ),
    Card(
        name: "Bspade5",
        value: 5
    ),
    Card(
        name: "Bspade4",
        value: 4
    ),
    Card(
        name:"Bspade3",
        value: 3
    ),
    Card(
        name: "Bspade2",
        value: 2
    ),
    Card(
        name:"BspadeA",
        value: 1
    ),
    Card(
        name: "RdiamondK",
        value: 13
    ),
    Card(
        name: "RdiamondQ",
        value: 12
    ),
    Card(
        name: "RdiamondJ",
        value: 11
    ),
    Card(
        name: "Rdiamond10",
        value: 10
    ),
    Card(
        name: "Rdiamond9",
        value: 9
    ),
    Card(
        name: "Rdiamond8",
        value:8
    ),
    Card(
        name: "Rdiamond7",
        value: 7
    ),
    Card(
        name: "Rdiamond6",
        value: 6
    ),
    Card(
        name: "Rdiamond5",
        value: 5
    ),
    Card(
        name: "Rdiamond4",
        value: 4
    ),
    Card(
        name:"Rdiamond3",
        value: 3
    ),
    Card(
        name: "Rdiamond2",
        value: 2
    ),
    Card(
        name:"RdiamondA",
        value: 1
    ),
    Card(
        name: "BclubsK",
        value: 13
    ),
    Card(
        name: "BclubsQ",
        value: 12
    ),
    Card(
        name: "BclubsJ",
        value: 11
    ),
    Card(
        name: "Bclubs10",
        value: 10
    ),
    Card(
        name: "Bclubs9",
        value: 9
    ),
    Card(
        name: "Bclubs8",
        value:8
    ),
    Card(
        name: "Bclubs7",
        value: 7
    ),
    Card(
        name: "Bclubs6",
        value: 6
    ),
    Card(
        name: "Bclubs5",
        value: 5
    ),
    Card(
        name: "Bclubs4",
        value: 4
    ),
    Card(
        name:"Bclubs3",
        value: 3
    ),
    Card(
        name: "Bclubs2",
        value: 2
    ),
    Card(
        name:"BclubsA",
        value: 1
    )
]
class Card {
    var name: String
    var value: Int
    init (name: String , value: Int) {
        self.name = name;
        self.value = value;
    }
}