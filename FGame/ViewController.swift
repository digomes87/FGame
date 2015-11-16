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
        self.scoreBoarding.hidden = true
        self.play.hidden = true
        self.retry.hidden = true
        
        
        
        self.bola.center.x = 178.0
        self.bola.center.y = 390.0
        
        self.pilar1.center = CGPointMake(175.0, 436.0)
        self.pilar2.center = CGPointMake(214.0, 407.0)
        self.pilarTop2.center = CGPointMake(pilar1.center.x, pilar1.center.y - 35)
        self.pilarTop3.center = CGPointMake(pilar2.center.x, pilar2.center.y - 35)
        
        time = NSTimer.scheduledTimerWithTimeInterval(0.045, target: self, selector: "move", userInfo: nil, repeats: true)
        
        self.pilar3.center = PilarProcess(pilar2.center.x, y: pilar2.center.y)
        self.pilar4.center = PilarProcess(pilar3.center.x, y: pilar3.center.y)
        self.pilar5.center = PilarProcess(pilar4.center.x, y: pilar4.center.y)
        self.pilar6.center = PilarProcess(pilar5.center.x, y: pilar5.center.y)
        self.pilar7.center = PilarProcess(pilar6.center.x, y: pilar6.center.y)
        self.pilar8.center = PilarProcess(pilar7.center.x, y: pilar7.center.y)
        self.pilar9.center = PilarProcess(pilar8.center.x, y: pilar8.center.y)
        self.pilar10.center = PilarProcess(pilar9.center.x, y: pilar9.center.y)
        self.pilar11.center = PilarProcess(pilar10.center.x, y: pilar10.center.y)
        self.pilar12.center = PilarProcess(pilar11.center.x, y: pilar11.center.y)
        self.pilar13.center = PilarProcess(pilar12.center.x, y: pilar12.center.y)
        self.pilar14.center = PilarProcess(pilar13.center.x, y: pilar13.center.y)
        self.pilar15.center = PilarProcess(pilar14.center.x, y: pilar14.center.y)
        self.pilar16.center = PilarProcess(pilar15.center.x, y: pilar15.center.y)
        self.pilar17.center = PilarProcess(pilar16.center.x, y: pilar16.center.y)
        self.pilar18.center = PilarProcess(pilar17.center.x, y: pilar17.center.y)
        self.pilar19.center = PilarProcess(pilar18.center.x, y: pilar18.center.y)
        self.pilar20.center = PilarProcess(pilar19.center.x, y: pilar19.center.y)
        self.pilar21.center = PilarProcess(pilar20.center.x, y: pilar20.center.y)
        self.pilar22.center = PilarProcess(pilar21.center.x, y: pilar21.center.y)
        self.pilar23.center = PilarProcess(pilar22.center.x, y: pilar22.center.y)
        self.pilar24.center = PilarProcess(pilar23.center.x, y: pilar23.center.y)
        self.pilar25.center = PilarProcess(pilar24.center.x, y: pilar24.center.y)
        self.pilar26.center = PilarProcess(pilar25.center.x, y: pilar25.center.y)
        
        
        self.pilarTop6.hidden = true
        self.pilarTop5.hidden = true
        self.pilarTop4.hidden = true
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
        self.pilar11.hidden = false
        self.pilar12.hidden = false
        self.pilar13.hidden = false
        self.pilar14.hidden = false
        self.pilar15.hidden = false
        self.pilar16.hidden = false
        self.pilar17.hidden = false
        self.pilar18.hidden = false
        self.pilar19.hidden = false
        self.pilar20.hidden = false
        self.pilar21.hidden = false
        self.pilar22.hidden = false
        self.pilar23.hidden = false
        self.pilar24.hidden = false
        self.pilar25.hidden = false
        self.pilar26.hidden = false
        
        
    }
    @IBAction func retry(sender: AnyObject){
        
        self.viewDidLoad()
        self.play(play)
        
    }
    
    @IBOutlet var Gameview: UIView!
    @IBOutlet var pilar26: UIImageView!
    @IBOutlet var pilar25: UIImageView!
    @IBOutlet var pilar24: UIImageView!
    @IBOutlet var pilar23: UIImageView!
    @IBOutlet var pilar22: UIImageView!
    @IBOutlet var pilar21: UIImageView!
    @IBOutlet var pilar20: UIImageView!
    @IBOutlet var pilar19: UIImageView!
    @IBOutlet var pilar18: UIImageView!
    @IBOutlet var pilar17: UIImageView!
    @IBOutlet var pilar16: UIImageView!
    @IBOutlet var pilar15: UIImageView!
    @IBOutlet var pilar14: UIImageView!
    @IBOutlet var pilar13: UIImageView!
    @IBOutlet var pilar12: UIImageView!
    @IBOutlet var pilar11: UIImageView!
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
    @IBOutlet var pilarTop4: UIImageView!
    @IBOutlet var pilarTop5: UIImageView!
    @IBOutlet var pilarTop6: UIImageView!
    @IBOutlet var scoreBoarding: UIImageView!
    @IBOutlet var retry: UIButton!
    @IBOutlet var logo: UIImageView!
    @IBOutlet var gameOver: UIImageView!
    @IBOutlet var bola: UIImageView!
    @IBOutlet var highScore: UILabel!
    @IBOutlet var score: UILabel!
    @IBOutlet var scoreNow: UILabel!
   
    var time = NSTimer()
    var Sscore: Int = 0
    var HhighScore: Int = 0
    let defautls: NSUserDefaults = NSUserDefaults.standardUserDefaults()
    
    
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
    var pilar11Center:CGPoint?
    var pilar12Center:CGPoint?
    var pilar13Center:CGPoint?
    var pilar14Center:CGPoint?
    var pilar15Center:CGPoint?
    var pilar16Center:CGPoint?
    var pilar17Center:CGPoint?
    var pilar18Center:CGPoint?
    var pilar19Center:CGPoint?
    var pilar20Center:CGPoint?
    var pilar21Center:CGPoint?
    var pilar22Center:CGPoint?
    var pilar23Center:CGPoint?
    var pilar24Center:CGPoint?
    var pilar25Center:CGPoint?
    var pilar26Center:CGPoint?
    
    var pilarTop1Center:CGPoint?
    var pilarTop2Center:CGPoint?
    var pilarTop3Center:CGPoint?
    var pilarTop4Center:CGPoint?
    var pilarTop5Center:CGPoint?
    var pilarTop6Center:CGPoint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HhighScore = defautls.integerForKey("highScore")
       // Sscore = defautls.integerForKey("score")
        self.bola.hidden = true
        self.gameOver.hidden = true
        self.logo.hidden = false
        self.scoreBoarding.hidden = true
        self.pilarTop6.hidden = false
        self.pilarTop5.hidden = false
        self.pilarTop4.hidden = false
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
        self.pilar11.hidden = true
        self.pilar12.hidden = true
        self.pilar13.hidden = true
        self.pilar14.hidden = true
        self.pilar15.hidden = true
        self.pilar16.hidden = true
        self.pilar17.hidden = true
        self.pilar18.hidden = true
        self.pilar19.hidden = true
        self.pilar20.hidden = true
        self.pilar21.hidden = true
        self.pilar22.hidden = true
        self.pilar23.hidden = true
        self.pilar24.hidden = true
        self.pilar25.hidden = true
        self.pilar26.hidden = true
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        if tipVal == true {
            
            Sscore++
            
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
        pilar11Center = self.pilar11.center
        pilar12Center = self.pilar12.center
        pilar13Center = self.pilar13.center
        pilar14Center = self.pilar14.center
        pilar15Center = self.pilar15.center
        pilar16Center = self.pilar16.center
        pilar17Center = self.pilar17.center
        pilar18Center = self.pilar18.center
        pilar19Center = self.pilar19.center
        pilar20Center = self.pilar20.center
        pilar21Center = self.pilar21.center
        pilar22Center = self.pilar22.center
        pilar23Center = self.pilar23.center
        pilar24Center = self.pilar24.center
        pilar25Center = self.pilar25.center
        pilar26Center = self.pilar26.center
        
        pilarTop1Center = self.pilarTop1.center
        pilarTop2Center = self.pilarTop2.center
        pilarTop3Center = self.pilarTop3.center
        pilarTop4Center = self.pilarTop4.center
        pilarTop5Center = self.pilarTop5.center
        pilarTop5Center = self.pilarTop6.center
        
        
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
        pilar11.center.y += 5
        pilar12.center.y += 5
        pilar13.center.y += 5
        pilar14.center.y += 5
        pilar15.center.y += 5
        pilar16.center.y += 5
        pilar17.center.y += 5
        pilar18.center.y += 5
        pilar19.center.y += 5
        pilar20.center.y += 5
        pilar21.center.y += 5
        pilar22.center.y += 5
        pilar23.center.y += 5
        pilar24.center.y += 5
        pilar25.center.y += 5
        pilar26.center.y += 5
        
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
        pilar11.center = movePilarUp(pilar11.center.x, floaty: pilar11.center.y, pilarNumber: 11)
        pilar12.center = movePilarUp(pilar12.center.x, floaty: pilar12.center.y, pilarNumber: 12)
        pilar13.center = movePilarUp(pilar13.center.x, floaty: pilar13.center.y, pilarNumber: 13)
        pilar14.center = movePilarUp(pilar14.center.x, floaty: pilar14.center.y, pilarNumber: 14)
        pilar15.center = movePilarUp(pilar15.center.x, floaty: pilar15.center.y, pilarNumber: 15)
        pilar16.center = movePilarUp(pilar16.center.x, floaty: pilar16.center.y, pilarNumber: 16)
        pilar17.center = movePilarUp(pilar17.center.x, floaty: pilar17.center.y, pilarNumber: 17)
        pilar18.center = movePilarUp(pilar18.center.x, floaty: pilar18.center.y, pilarNumber: 18)
        pilar19.center = movePilarUp(pilar19.center.x, floaty: pilar19.center.y, pilarNumber: 19)
        pilar20.center = movePilarUp(pilar20.center.x, floaty: pilar20.center.y, pilarNumber: 20)
        pilar21.center = movePilarUp(pilar21.center.x, floaty: pilar21.center.y, pilarNumber: 21)
        pilar22.center = movePilarUp(pilar22.center.x, floaty: pilar22.center.y, pilarNumber: 22)
        pilar23.center = movePilarUp(pilar23.center.x, floaty: pilar23.center.y, pilarNumber: 23)
        pilar24.center = movePilarUp(pilar24.center.x, floaty: pilar24.center.y, pilarNumber: 24)
        pilar25.center = movePilarUp(pilar25.center.x, floaty: pilar25.center.y, pilarNumber: 25)
        pilar26.center = movePilarUp(pilar26.center.x, floaty: pilar26.center.y, pilarNumber: 26)
        
        
        if (((
            (bola.center.x > pilarTop1.center.x - 50) && (bola.center.x < pilarTop1.center.x  + 50) && (bola.center.y > pilarTop1.center.y - 45) && (bola.center.y < pilarTop1.center.y + 45) ||
            (bola.center.x > pilarTop2.center.x - 50) && (bola.center.x < pilarTop2.center.x  + 50) && (bola.center.y > pilarTop2.center.y - 45) && (bola.center.y < pilarTop2.center.y + 45) ||
            (bola.center.x > pilarTop3.center.x - 50) && (bola.center.x < pilarTop3.center.x  + 50) && (bola.center.y > pilarTop3.center.y - 45) && (bola.center.y < pilarTop3.center.y + 45) ||
            (bola.center.x > pilarTop4.center.x - 50) && (bola.center.x < pilarTop4.center.x  + 50) && (bola.center.y > pilarTop4.center.y - 45) && (bola.center.y < pilarTop4.center.y + 45) ||
            (bola.center.x > pilarTop5.center.x - 50) && (bola.center.x < pilarTop5.center.x  + 50) && (bola.center.y > pilarTop5.center.y - 45) && (bola.center.y < pilarTop5.center.y + 45) ||
            (bola.center.x > pilarTop6.center.x - 50) && (bola.center.x < pilarTop6.center.x  + 50) && (bola.center.y > pilarTop6.center.y - 45) && (bola.center.y < pilarTop6.center.y + 45)
        )))
        {
        
        }else{
            //vacilao perdeu na jogatina!!
            vcPerdeu()
        }
        
        if CGRectIntersectsRect(bola.frame, pilar1.frame){
            
            self.pilarTop1.center = CGPointMake(pilar26.center.x,pilar26.center.y - 35)
            self.pilarTop2.center = CGPointMake(pilar1.center.x, pilar1.center.y - 35)
            self.pilarTop3.center = CGPointMake(pilar2.center.x, pilar2.center.y - 35)
            self.pilarTop4.center = CGPointMake(pilar23.center.x, pilar23.center.y - 35)
            self.pilarTop5.center = CGPointMake(pilar24.center.x, pilar24.center.y - 35)
            self.pilarTop6.center = CGPointMake(pilar25.center.x, pilar25.center.y - 35)
            
        }else if CGRectIntersectsRect(bola.frame, pilar2.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar3.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar4.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar5.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar6.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar7.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar8.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar9.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar10.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar11.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar12.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar13.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar14.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar15.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar16.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar17.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar18.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar19.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar20.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar21.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar22.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar23.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar24.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar25.frame){
        }else if CGRectIntersectsRect(bola.frame, pilar26.frame){
        }
    }
    
    func movePilarUp(floatx: CGFloat, floaty: CGFloat, pilarNumber: Int) -> (CGPoint) {
        
        var center = CGPointMake(floatx, floaty)
        
        if checkPilarPosition(floaty) == true {
            
            switch pilarNumber{
            case 1:
                Gameview.sendSubviewToBack(pilar1)
                center = PilarProcess(self.pilar26.center.x, y: self.pilar26.center.y)
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
            case 11:
                Gameview.sendSubviewToBack(pilar11)
                center = PilarProcess(self.pilar10.center.x, y: self.pilar10.center.y)
                break
            case 12:
                Gameview.sendSubviewToBack(pilar12)
                center = PilarProcess(self.pilar11.center.x, y: self.pilar11.center.y)
                break
            case 13:
                Gameview.sendSubviewToBack(pilar13)
                center = PilarProcess(self.pilar12.center.x, y: self.pilar12.center.y)
                break
            case 14:
                Gameview.sendSubviewToBack(pilar14)
                center = PilarProcess(self.pilar13.center.x, y: self.pilar13.center.y)
                break
            case 15:
                Gameview.sendSubviewToBack(pilar15)
                center = PilarProcess(self.pilar14.center.x, y: self.pilar14.center.y)
                break
            case 16:
                Gameview.sendSubviewToBack(pilar16)
                center = PilarProcess(self.pilar15.center.x, y: self.pilar15.center.y)
                break
            case 17:
                Gameview.sendSubviewToBack(pilar17)
                center = PilarProcess(self.pilar16.center.x, y: self.pilar16.center.y)
                break
            case 18:
                Gameview.sendSubviewToBack(pilar18)
                center = PilarProcess(self.pilar17.center.x, y: self.pilar17.center.y)
                break
            case 19:
                Gameview.sendSubviewToBack(pilar19)
                center = PilarProcess(self.pilar18.center.x, y: self.pilar18.center.y)
                break
            case 20:
                Gameview.sendSubviewToBack(pilar20)
                center = PilarProcess(self.pilar19.center.x, y: self.pilar19.center.y)
                break
            case 21:
                Gameview.sendSubviewToBack(pilar21)
                center = PilarProcess(self.pilar20.center.x, y: self.pilar20.center.y)
                break
            case 22:
                Gameview.sendSubviewToBack(pilar22)
                center = PilarProcess(self.pilar21.center.x, y: self.pilar21.center.y)
                break
            case 23:
                Gameview.sendSubviewToBack(pilar23)
                center = PilarProcess(self.pilar22.center.x, y: self.pilar22.center.y)
                break
            case 24:
                Gameview.sendSubviewToBack(pilar24)
                center = PilarProcess(self.pilar23.center.x, y: self.pilar23.center.y)
                break
            case 25:
                Gameview.sendSubviewToBack(pilar25)
                center = PilarProcess(self.pilar24.center.x, y: self.pilar24.center.y)
                break
            case 26:
                Gameview.sendSubviewToBack(pilar26)
                center = PilarProcess(self.pilar25.center.x, y: self.pilar25.center.y)
                break
            default:
                break
                
            }
        }
            return(center)
    }
    
    
    func vcPerdeu(){
        tipVal = false
        time.invalidate()
        score.hidden = true
        gameOver.hidden = false
        retry.hidden = false
        
        
        scoreBoarding.hidden = false
        highScore.hidden = false
        
        
        if Sscore > HhighScore{
            HhighScore = Sscore
        }
        defautls.setInteger(HhighScore, forKey: "highScore")
        
        self.score.text = String(Sscore)
        self.highScore.text = String(HhighScore)
        
        Gameview.sendSubviewToBack(pilar1)
        Gameview.sendSubviewToBack(pilar2)
        Gameview.sendSubviewToBack(pilar3)
        Gameview.sendSubviewToBack(pilar4)
        Gameview.sendSubviewToBack(pilar5)
        Gameview.sendSubviewToBack(pilar6)
        Gameview.sendSubviewToBack(pilar7)
        Gameview.sendSubviewToBack(pilar8)
        Gameview.sendSubviewToBack(pilar9)
        Gameview.sendSubviewToBack(pilar10)
        Gameview.sendSubviewToBack(pilar11)
        Gameview.sendSubviewToBack(pilar12)
        Gameview.sendSubviewToBack(pilar13)
        Gameview.sendSubviewToBack(pilar14)
        Gameview.sendSubviewToBack(pilar15)
        Gameview.sendSubviewToBack(pilar16)
        Gameview.sendSubviewToBack(pilar17)
        Gameview.sendSubviewToBack(pilar18)
        Gameview.sendSubviewToBack(pilar19)
        Gameview.sendSubviewToBack(pilar20)
        Gameview.sendSubviewToBack(pilar21)
        Gameview.sendSubviewToBack(pilar22)
        Gameview.sendSubviewToBack(pilar23)
        Gameview.sendSubviewToBack(pilar24)
        Gameview.sendSubviewToBack(pilar25)
        Gameview.sendSubviewToBack(pilar26)
        
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
        
        if let newPila11Center = pilar11Center{
            self.pilar11.center = newPila11Center
        }
        if let newPila12Center = pilar12Center{
            self.pilar12.center = newPila12Center
        }
        if let newPila13Center = pilar13Center{
            self.pilar13.center = newPila13Center
        }
        if let newPila14Center = pilar14Center{
            self.pilar14.center = newPila14Center
        }
        if let newPila15Center = pilar15Center{
            self.pilar15.center = newPila15Center
        }
        if let newPila16Center = pilar16Center{
            self.pilar16.center = newPila16Center
        }
        if let newPila17Center = pilar17Center{
            self.pilar17.center = newPila17Center
        }
        if let newPila18Center = pilar18Center{
            self.pilar18.center = newPila18Center
        }
        if let newPila19Center = pilar19Center{
            self.pilar19.center = newPila19Center
        }
        if let newPila20Center = pilar20Center{
            self.pilar20.center = newPila20Center
        }
        if let newPila21Center = pilar21Center{
            self.pilar21.center = newPila21Center
        }
        if let newPila22Center = pilar22Center{
            self.pilar22.center = newPila22Center
        }
        if let newPila23Center = pilar23Center{
            self.pilar23.center = newPila23Center
        }
        if let newPila24Center = pilar24Center{
            self.pilar24.center = newPila24Center
        }
        if let newPila25Center = pilar25Center{
            self.pilar25.center = newPila25Center
        }
        if let newPila26Center = pilar26Center{
            self.pilar26.center = newPila26Center
        }
        if let newPilarTop1Center = pilarTop1Center{
            self.pilarTop1.center = newPilarTop1Center
        }
        if let newPilarTop2Center = pilarTop2Center{
            self.pilarTop2.center = newPilarTop2Center
        }
        if let newPilarTop3Center = pilarTop3Center{
            self.pilarTop3.center = newPilarTop3Center
        }
        if let newPilarTop4Center = pilarTop4Center{
            self.pilarTop4.center = newPilarTop4Center
        }
        if let newPilarTop5Center = pilarTop5Center{
            self.pilarTop5.center = newPilarTop5Center
        }
        if let newPilarTop6Center = pilarTop6Center{
            self.pilarTop6.center = newPilarTop6Center
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

