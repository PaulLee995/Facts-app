//
//  ViewController.swift
//  Facts app
//
//  Created by 파벨 on 10/03/2019.
//  Copyright © 2019 appbuilding123. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let factRandom = FactsProvider()
    let colorRandom = ColorsProvider()

    @IBOutlet weak var factLabel: UILabel!
    @IBOutlet weak var buttonFact: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        factLabel.text = factRandom.randomFact()
        view.backgroundColor = UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0)
    }

    @IBAction func anotherFactButton(_ sender: Any) {
        factLabel.text = factRandom.randomFact()
        let currentColor = colorRandom.randomColor()
        buttonFact.tintColor = currentColor
        view.backgroundColor = currentColor
    }
    
}

