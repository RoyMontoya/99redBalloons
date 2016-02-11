//
//  ViewController.swift
//  99 Red balloons
//
//  Created by Roy Montoya on 2/7/16.
//  Copyright © 2016 Roy Montoya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var balloonLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    var Balloons:[Balloon] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       self.creeateBalloons()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func NextButtonPressed(sender: UIBarButtonItem) {
        let balloon = Balloons[currentIndex]
        balloonLabel.text = "\(balloon.number) balloon"
        backgroundImage.image = balloon.image
        
        currentIndex += 1
        
    }
    
    func creeateBalloons(){
        for var i = 0; i <= 100 ; ++i{
            var balloon = Balloon()
            balloon.number = i
            balloon.image = UIImage(named: balloon.getRandomNameImage())
            self.Balloons.append(balloon)
        }
    }
}

