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
    
    @IBOutlet var Gameview: UIView!
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
    
    var bolaCenter:CGPoint?
    var pilar1Center:CGPoint?
    var pilar2Center:CGPoint?
    var pilar3Center:CGPoint?
    var pilar4Center:CGPoint?
    var pilar5Center:CGPoint?
    var pilar6Center:CGPoint?
    var pilar7Center:CGPoint?
    var pilar8Center:CGPoint?
    var pilar9Center:CGPoint?
    var pilar10Center:CGPoint?
    var pilarTop1Center:CGPoint?
    var pilarTop2Center:CGPoint?
    var pilarTop3Center:CGPoint?
    
    
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
        
        bolaCenter = self.bola.center
        pilar1Center = self.pilar1.center
        pilar2Center = self.pilar2.center
        pilar3Center = self.pilar3.center
        pilar4Center = self.pilar4.center
        pilar5Center = self.pilar5.center
        pilar6Center = self.pilar6.center
        pilar7Center = self.pilar7.center
        pilar8Center = self.pilar8.center
        pilar9Center = self.pilar9.center
        pilar10Center = self.pilar10.center
        
        
        
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
        
        pilar1.center = movePilarUp(pilar1.center.x, floaty: pilar1.center.y, pilarNumber: 1)
        pilar2.center = movePilarUp(pilar2.center.x, floaty: pilar2.center.y, pilarNumber: 2)
        pilar3.center = movePilarUp(pilar3.center.x, floaty: pilar3.center.y, pilarNumber: 3)
        pilar4.center = movePilarUp(pilar4.center.x, floaty: pilar4.center.y, pilarNumber: 4)
        pilar5.center = movePilarUp(pilar5.center.x, floaty: pilar5.center.y, pilarNumber: 5)
        pilar6.center = movePilarUp(pilar6.center.x, floaty: pilar6.center.y, pilarNumber: 6)
        pilar7.center = movePilarUp(pilar7.center.x, floaty: pilar7.center.y, pilarNumber: 7)
        pilar8.center = movePilarUp(pilar8.center.x, floaty: pilar8.center.y, pilarNumber: 8)
        pilar9.center = movePilarUp(pilar9.center.x, floaty: pilar9.center.y, pilarNumber: 9)
        pilar10.center = movePilarUp(pilar10.center.x, floaty: pilar10.center.y, pilarNumber: 10)
    }
    
    func movePilarUp(floatx: CGFloat, floaty: CGFloat, pilarNumber: Int) -> (CGPoint) {
        
        var center = CGPointMake(floatx, floaty)
        
        if checkPilarPosition(floaty) == true {
            
            switch pilarNumber{
            case 1:
                Gameview.sendSubviewToBack(pilar1)
                center = PilarProcess(self.pilar10.center.x, y: self.pilar10.center.y)
                break
            case 2:
                Gameview.sendSubviewToBack(pilar2)
                center = PilarProcess(self.pilar1.center.x, y: self.pilar1.center.y)
                break
            case 3:
                Gameview.sendSubviewToBack(pilar3)
                center = PilarProcess(self.pilar2.center.x, y: self.pilar2.center.y)
                break
            case 4:
                Gameview.sendSubviewToBack(pilar4)
                center = PilarProcess(self.pilar3.center.x, y: self.pilar3.center.y)
                break
            case 5:
                Gameview.sendSubviewToBack(pilar5)
                center = PilarProcess(self.pilar4.center.x, y: self.pilar4.center.y)
                break
            case 6:
                Gameview.sendSubviewToBack(pilar6)
                center = PilarProcess(self.pilar5.center.x, y: self.pilar5.center.y)
                break
            case 7:
                Gameview.sendSubviewToBack(pilar7)
                center = PilarProcess(self.pilar6.center.x, y: self.pilar6.center.y)
                break
            case 8:
                Gameview.sendSubviewToBack(pilar8)
                center = PilarProcess(self.pilar7.center.x, y: self.pilar7.center.y)
                break
            case 9:
                Gameview.sendSubviewToBack(pilar9)
                center = PilarProcess(self.pilar8.center.x, y: self.pilar8.center.y)
                break
            case 10:
                Gameview.sendSubviewToBack(pilar10)
                center = PilarProcess(self.pilar9.center.x, y: self.pilar9.center.y)
                break
            default:
                break
                
            }
        }
            return(center)
    }
    
    func checkPilarPosition(y: CGFloat) -> (Bool){
        
        var low:Bool = false
        
        if (y > 720){
            low = true
        }
        
        return(low)
    }
    
    override func viewDidLayoutSubviews() {
        
        if let newBallCenter = bolaCenter{
            self.bola.center = newBallCenter
        }
        
        if let newPila1Center = pilar1Center{
            self.pilar1.center = newPila1Center
        }
        
        if let newPila2Center = pilar2Center{
            self.pilar2.center = newPila2Center
        }
        
        if let newPila3Center = pilar3Center{
            self.pilar3.center = newPila3Center
        }
        
        if let newPila4Center = pilar4Center{
            self.pilar4.center = newPila4Center
        }
        
        if let newPila5Center = pilar5Center{
            self.pilar5.center = newPila5Center
        }
        
        if let newPila6Center = pilar6Center{
            self.pilar6.center = newPila6Center
        }
        
        if let newPila7Center = pilar7Center{
            self.pilar7.center = newPila7Center
        }
        
        if let newPila8Center = pilar8Center{
            self.pilar8.center = newPila8Center
        }
        
        if let newPila9Center = pilar9Center{
            self.pilar9.center = newPila9Center
        }
        
        if let newPila10Center = pilar10Center{
            self.pilar10.center = newPila10Center
        }
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

