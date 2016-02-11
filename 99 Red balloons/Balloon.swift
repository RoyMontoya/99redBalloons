//
//  Baloon.swift
//  99 Red balloons
//
//  Created by Roy Montoya on 2/7/16.
//  Copyright © 2016 Roy Montoya. All rights reserved.
//

import Foundation
import UIKit

struct Balloon{
    var number = 0
    var image = UIImage(named:"")
    
    func getRandomNameImage() -> String{
        let randomNumber = Int(arc4random_uniform(UInt32(4)))
        let nameImage: String

        
        switch randomNumber {
    
        case 1:
            nameImage = "RedBalloon1.jpg"
        case 2:
            nameImage = "RedBalloon2.jpg"
        case 3:
            nameImage = "RedBalloon3.jpg"
        case 4:
            nameImage = "RedBalloon4.jpg"
        default:
            nameImage = "BerlinTVTower.jpg"
        }
        
        return nameImage
    }
}