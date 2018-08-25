//
//  ViewController.swift
//  IOS-Swift-IBOutletCollectionStarRating
//
//  Created by Pooya on 2018-08-25.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var starButtons: [UIButton]!
    
    @IBOutlet weak var rateView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Rated \(sender.tag) stars.")
        rateView.text = "Rated \(sender.tag) stars."
        for  button in starButtons {
            if button.tag <= sender.tag {
                button.setBackgroundImage(UIImage.init(named: "star-selected"), for: .normal)   //selectted
            } else {
                button.setBackgroundImage(UIImage.init(named: "star-not-selected"), for: .normal)    //not selectted
            }
        }
        
        
        
        
    }
    
}

