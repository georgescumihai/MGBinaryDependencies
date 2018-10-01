//
//  ViewController.swift
//  MGBinaryDependencies
//
//  Created by Mihai Georgescu on 28/09/2018.
//  Copyright © 2018 Mihai Georgescu. All rights reserved.
//

import UIKit
import MGSampleFramework
import MGRandom

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    var sleeper: MGSleep?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Just some code that uses both frameworks.
        mainLabel.text = "Will go to sleep"
        let sleeper = MGSleep(name: String.randomEmail)
        sleeper.goToSleep(time: 3.0) { [weak self] in
            DispatchQueue.main.async {
                self?.mainLabel.text = "\(sleeper.name) woke up"
            }
        }
    }
}

