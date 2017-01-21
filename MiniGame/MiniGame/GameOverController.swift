//
//  GameOverController.swift
//  MiniGame
//
//  Created by Student on 2017/01/14.
//  Copyright © 2017年 Student. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController{

    var score = 0

    @IBOutlet weak var score_label: UILabel!
    

    override func viewDidLoad() {
        score_label.text = String(score);
    }

}