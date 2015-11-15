//
//  ViewController.swift
//  FGame
//
//  Created by Diego Gomes on 14/11/2015.
//  Copyright © 2015 Nylon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func retry(sender: AnyObject) {
        
    }
    
    @IBAction func play(sender: AnyObject) {
        
        self.gameOver.hidden = true
        self.retr.hidden = true
        self.bola.hidden = false
        self.twitter.hidden = true
        self.scoreBoard.hidden = true
        self.playBt.hidden = true
        
        //posicao da bola
        self.bola.center.x = 123.7
        self.bola.center.y = 200.0
        
        
        self.coluna1.center = CGPointMake(375.0, 436.0)
        self.coluna2.center = CGPointMake(114.0, 407.0)
        
        self.coluna3.center = caminhoProcess(coluna2.center.x, y: coluna2.center.y)
        self.coluna4.center = caminhoProcess(coluna3.center.x, y: coluna3.center.y)
        self.coluna5.center = caminhoProcess(coluna4.center.x, y: coluna4.center.y)
        self.coluna6.center = caminhoProcess(coluna5.center.x, y: coluna5.center.y)
        self.coluna7.center = caminhoProcess(coluna6.center.x, y: coluna6.center.y)
        self.coluna8.center = caminhoProcess(coluna7.center.x, y: coluna7.center.y)
        self.coluna9.center = caminhoProcess(coluna8.center.x, y: coluna8.center.y)
        self.coluna10.center = caminhoProcess(coluna9.center.x, y: coluna9.center.y)
        
        
        
        
        
        
        self.coluna1.hidden = false
        self.coluna2.hidden = false
        self.coluna3.hidden = false
        self.coluna4.hidden = false
        self.coluna5.hidden = false
        self.coluna6.hidden = false
        self.coluna7.hidden = false
        self.coluna8.hidden = false
        self.coluna9.hidden = false
        self.coluna10.hidden = false
        
        self.caminho.hidden = false
        self.caminho2.hidden = false
        self.caminho3.hidden = false
        
    }
    
    @IBOutlet var playBt: UIButton!
    @IBOutlet var retry: UIButton!
    @IBOutlet var scoreBoard: UIImageView!
    @IBOutlet var coluna10: UIImageView!
    @IBOutlet var coluna9: UIImageView!
    @IBOutlet var coluna8: UIImageView!
    @IBOutlet var coluna7: UIImageView!
    @IBOutlet var coluna6: UIImageView!
    @IBOutlet var coluna5: UIImageView!
    @IBOutlet var coluna4: UIImageView!
    @IBOutlet var coluna3: UIImageView!
    @IBOutlet var coluna2: UIImageView!
    @IBOutlet var coluna1: UIImageView!
    @IBOutlet var caminho3: UIImageView!
    @IBOutlet var caminho2: UIImageView!
    @IBOutlet var caminho: UIImageView!
    @IBOutlet var gameOver: UIImageView!
    @IBOutlet var score: UIImageView!
    @IBOutlet var retr: UIImageView!
    @IBOutlet var twitter: UIImageView!
    @IBOutlet var bola: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.gameOver.hidden = true
        self.retr.hidden = true
        self.bola.hidden = true
        self.twitter.hidden = true
        self.scoreBoard.hidden = true
        
        self.coluna1.hidden = true
        self.coluna2.hidden = true
        self.coluna3.hidden = true
        self.coluna4.hidden = true
        self.coluna5.hidden = true
        self.coluna6.hidden = true
        self.coluna7.hidden = true
        self.coluna8.hidden = true
        self.coluna9.hidden = true
        self.coluna10.hidden = true
        
        self.caminho.hidden = true
        self.caminho2.hidden = true
        self.caminho3.hidden = true
        
        
    }
    
    func caminhoProcess(x: CGFloat, y: CGFloat) -> (CGPoint){
    
        var CaminhoNewX: CGFloat
        var CaminhoNewY: CGFloat
        
        let Random: Int  = Int(arc4random() % 2)
        
        if Random == 1 {
            
            CaminhoNewX = x + 39
            CaminhoNewY = y - 29
            
            if CaminhoNewX >= 39{
                
                CaminhoNewX = x - 40
                CaminhoNewY = y - 30
            }
            
        }else{
            
            CaminhoNewX = x - 40
            CaminhoNewY = y - 30
            
            if CaminhoNewX <= 17{
                
                CaminhoNewX = x + 30
                CaminhoNewY = y - 29
            }
        }
        
        let newCaminhoCenter = CGPointMake(CaminhoNewX, CaminhoNewY)
        return(newCaminhoCenter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

