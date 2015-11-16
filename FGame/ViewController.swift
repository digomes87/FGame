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
    
        self.bola.hidden = false
        self.gameOver.hidden = true
        self.logo.hidden = true
        self.retry.hidden = true
        self.scoreBoarding.hidden = true
        
        
        self.bola.center.x = 178.0
        self.bola.center.y = 390.0
        
        self.pilar1.center = CGPointMake(175.0, 436.0)
        self.pilar2.center = CGPointMake(214.0, 407.0)
        
        self.pilar3.center = PilarProcess(pilar2.center.x, y: pilar2.center.y)
        
        
        
        self.pilarTop3.hidden = false
        self.pilarTop2.hidden = false
        self.pilarTop1.hidden = false
        
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
    
    func PilarProcess(x:CGFloat ,y:CGFloat) -> (CGPoint){
        
        var PilarNewX: CGFloat
        var PilarNewY: CGFloat
        
        let random: Int = Int(arc4random() % 2)
        
        if random == 1 {
            
            PilarNewX = x + 39
            PilarNewY = y - 29
            
        }else{
            
            PilarNewX = x - 40
            PilarNewY = y - 30
        
        }
        
        let newPillarCenter = CGPointMake(PilarNewX, PilarNewY)
        return(newPillarCenter)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

