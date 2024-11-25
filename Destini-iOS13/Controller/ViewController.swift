//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var scriptLabel: UILabel!
    private var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }
    
 
    @IBAction func chocie2Selected(_ sender: UIButton) {
        storyBrain.secondChoiceChoiceSelected()
        updateUi()
    }
    @IBAction func choice1Selected(_ sender: UIButton) {
        storyBrain.firstChoiceSelected()
        updateUi()
    }
    
    private func updateUi() {
        scriptLabel.text = storyBrain.getCurrentStoryTitle()
        choice1Button.setTitle(storyBrain.getCurrentStoryChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getCurrentStoryChoice2(), for: .normal)
    }
}

