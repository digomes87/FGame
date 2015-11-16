//
//  ViewController.swift
//  FGame
//
//  Created by Diego Gomes on 14/11/2015.
//  Copyright © 2015 Nylon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func play(sender: AnyObject) {
        BolaC=true
        tipVal=true
        self.bola.hidden = false
        self.gameOver.hidden = true
        self.logo.hidden = true
        self.retry.hidden = true
        self.scoreBoarding.hidden = true
        self.play.hidden = true
        
        
        self.bola.center.x = 178.0
        self.bola.center.y = 390.0
        
        self.pilar1.center = CGPointMake(175.0, 436.0)
        self.pilar2.center = CGPointMake(214.0, 407.0)
        
        time = NSTimer.scheduledTimerWithTimeInterval(0.045, target: self, selector: "move", userInfo: nil, repeats: true)
        
        self.pilar3.center = PilarProcess(pilar2.center.x, y: pilar2.center.y)
        self.pilar4.center = PilarProcess(pilar3.center.x, y: pilar3.center.y)
        self.pilar5.center = PilarProcess(pilar4.center.x, y: pilar4.center.y)
        self.pilar6.center = PilarProcess(pilar5.center.x, y: pilar5.center.y)
        self.pilar7.center = PilarProcess(pilar6.center.x, y: pilar6.center.y)
        self.pilar8.center = PilarProcess(pilar7.center.x, y: pilar7.center.y)
        self.pilar9.center = PilarProcess(pilar8.center.x, y: pilar8.center.y)
        self.pilar10.center = PilarProcess(pilar9.center.x, y: pilar9.center.y)
        
        
        self.pilarTop3.hidden = true
        self.pilarTop2.hidden = true
        self.pilarTop1.hidden = true
        
        self.pilar1.hidden = false
        self.pilar2.hidden = false
        self.pilar3.hidden = false
        self.pilar4.hidden = false
        self.pilar5.hidden = false
        self.pilar6.hidden = false
        self.pilar7.hidden = false
        self.pilar8.hidden = false
        self.pilar9.hidden = false
        self.pilar10.hidden = false
        
    }
    @IBAction func retry(sender: AnyObject){
        
    }
    
    @IBOutlet var pilar10: UIImageView!
    @IBOutlet var pilar9: UIImageView!
    @IBOutlet var pilar8: UIImageView!
    @IBOutlet var pilar7: UIImageView!
    @IBOutlet var pilar6: UIImageView!
    @IBOutlet var pilar5: UIImageView!
    @IBOutlet var pilar4: UIImageView!
    @IBOutlet var pilar3: UIImageView!
    @IBOutlet var pilar2: UIImageView!
    @IBOutlet var pilar1: UIImageView!
    @IBOutlet var play: UIButton!
    @IBOutlet var pilarTop1: UIImageView!
    @IBOutlet var pilarTop2: UIImageView!
    @IBOutlet var pilarTop3: UIImageView!
    @IBOutlet var scoreBoarding: UIImageView!
    @IBOutlet var retry: UIButton!
    @IBOutlet var logo: UIImageView!
    @IBOutlet var gameOver: UIImageView!
    @IBOutlet var bola: UIImageView!
   
    var time = NSTimer()
    var tipVal:Bool?
    var bolaR:Bool?
    var BolaC:Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.bola.hidden = true
        self.gameOver.hidden = true
        self.logo.hidden = false
        self.retry.hidden = true
        self.scoreBoarding.hidden = true
        self.pilarTop3.hidden = true
        self.pilarTop2.hidden = true
        self.pilarTop1.hidden = true
        
        self.pilar1.hidden = true
        self.pilar2.hidden = true
        self.pilar3.hidden = true
        self.pilar4.hidden = true
        self.pilar5.hidden = true
        self.pilar6.hidden = true
        self.pilar7.hidden = true
        self.pilar8.hidden = true
        self.pilar9.hidden = true
        self.pilar10.hidden = true
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        if tipVal == true {
            
            if bolaR == true {
                
                BolaC = false
            }else {
            
                BolaC = true
            }
        }
    }
    
    func move(){
        
        if BolaC == false {
            
            bolaR = false
        }else {
            
            bolaR = true
        }
        
        if bolaR == true {
            
            bola.center.x += 6.5
            bola.center.y -= 0.5
        }else{
            
            bola.center.x -= 6.5
            bola.center.y -= 0.5
        }
        
        bola.center.y += 0.5
        pilar1.center.y += 5
        pilar2.center.y += 5
        pilar3.center.y += 5
        pilar4.center.y += 5
        pilar5.center.y += 5
        pilar6.center.y += 5
        pilar7.center.y += 5
        pilar8.center.y += 5
        pilar9.center.y += 5
        pilar10.center.y += 5
    }
    
    
    
    func PilarProcess(x:CGFloat ,y:CGFloat) -> (CGPoint){
        
        var PilarNewX: CGFloat
        var PilarNewY: CGFloat
        
        let random: Int = Int(arc4random() % 2)
        
        if random == 1 {
            
            PilarNewX = x + 39
            PilarNewY = y - 29
            
            if PilarNewX >= 319 {
                
                PilarNewX = x - 40
                PilarNewY = y - 30
            }
            
        }else{
            
            PilarNewX = x - 40
            PilarNewY = y - 30
            
            if PilarNewX <= 17 {
                
                PilarNewX = x + 39
                PilarNewY = y - 29
            }
        
        }
        
        let newPillarCenter = CGPointMake(PilarNewX, PilarNewY)
        return(newPillarCenter)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

