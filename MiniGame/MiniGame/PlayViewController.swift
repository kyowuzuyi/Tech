//
//  PlayController.swift
//  MiniGame
//
//  Created by Student on 2016/10/22.
//  Copyright © 2016年 Student. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController{
    
    var timenumber = 30
    var lib: Array<Int> = [1,2,3,4,5,6]
    var score = 0;
    weak var timer:NSTimer?
    
    @IBOutlet weak var time: UILabel!
    
    @IBOutlet weak var box1: UILabel!
    
    @IBOutlet weak var box2: UILabel!
    
    @IBOutlet weak var box3: UILabel!
    
    @IBOutlet weak var box4: UILabel!
    
    @IBOutlet weak var box5: UILabel!
    
    @IBOutlet weak var box6: UILabel!
    
    @IBOutlet weak var score_label: UILabel!
    
    @IBAction func next(sender: AnyObject) {
        if(box1.text != String(5)){
            box();
        }else{
            gameover();
                   }
    }

    
    @IBAction func hit(sender: AnyObject) {
        if(box1.text == String(5) ){
            score++;
            score_label.text = String(score);
           // timenumber += 3;
            timer?.invalidate()
            
            timenumber += 3;
            
            if(timenumber > 30){
                timenumber = 30
            }
            
            startTime();
            box();
        }else{
            gameover();
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startTime()
        box()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func NewTimer(){
        timer?.invalidate()
    }
    
    func box(){
        box1.text = String(lib[Int(arc4random_uniform(5))])
        box2.text = String(lib[Int(arc4random_uniform(5))])
        box3.text = String(lib[Int(arc4random_uniform(5))])
        box4.text = String(lib[Int(arc4random_uniform(5))])
        box5.text = String(lib[Int(arc4random_uniform(5))])
        box6.text = String(lib[Int(arc4random_uniform(5))])
    }
    
    func startTime(){
         timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
    }
    
    func update(){
    time.text = String(timenumber)
        timenumber--;
        
        if(timenumber == 0){
            gameover()
                 }
    }
    
    func gameover(){
        let net = self.storyboard!.instantiateViewControllerWithIdentifier("next") as! GameOverViewController
        net.score = score
        self.presentViewController(net, animated: true, completion: nil)
    }
    


}





