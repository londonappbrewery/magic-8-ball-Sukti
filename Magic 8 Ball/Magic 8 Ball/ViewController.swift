//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Sukti Ghosh on 15/11/17.
//  Copyright © 2017 Sukti Ghosh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallImage : Int = 0
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        newBallImage()
    }
    
    
    func newBallImage () {
        randomBallImage = Int (arc4random_uniform(5))
        ballImage.image = UIImage(named: ballArray[randomBallImage])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

