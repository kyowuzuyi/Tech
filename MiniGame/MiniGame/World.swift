//
//  World.swift
//  MiniGame
//
//  Created by Student on 2016/10/29.
//  Copyright © 2016年 Student. All rights reserved.
//

import Foundation

class World{
    private let CharacterLib:Array<Character> = ["a","b","c","d","e","f","j","h","i"]
    private var NineBox: [Character] = []
    private var time: Int
    private var key: Int
 
    
    func isOverHit()->Bool{
        if(NineBox[self.key] == "e"){
            return false
        }else{
            return true
        }
    }
    
    func isOverNext()->Bool{
        if(NineBox[self.key] != "e"){
            return false
        }else{
            return true
        }
    }
    
    func update(){
        for i in 0...9{
            self.NineBox[i] = self.CharacterLib[(Int)(arc4random_uniform(10))]
        }
    }
    
    func timeAdd(){
        self.time = self.time + 3
    }
    
    func timeSub(){
        self.time--
    }
    
    func showResult()->String{
        return "Game is over"
    }
    
    init(NineBox: [Character],time: Int){
        for i in 0...9{
            self.NineBox[i] = self.CharacterLib[(Int)(arc4random_uniform(10))]
        }
        self.time = 60
        self.key = (Int)(arc4random_uniform(10))

    }

}