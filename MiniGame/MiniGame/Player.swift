//
//  Play.swift
//  MiniGame
//
//  Created by Student on 2016/10/29.
//  Copyright © 2016年 Student. All rights reserved.
//

import Foundation

class Player {
    private var score: Int
    
    func scoreGet()->Int{
        return ++score
    }
    
    func showScore()->Int{
        return self.score
    }
    
    init(score: Int){
            self.score = 0
    }
    
}