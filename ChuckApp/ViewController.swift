//
//  ViewController.swift
//  ChuckApp
//
//  Created by user on 23.08.2019.
//  Copyright © 2019 Ulko Artem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelJokeText: UILabel!
    @IBAction func pushRefreshAction(_ sender: Any) {
        let model = Model()
        labelJokeText.text = model.loadJoke()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let model = Model()
        labelJokeText.text = model.loadJoke()
    }
}
