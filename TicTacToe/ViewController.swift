//
//  ViewController.swift
//  TicTacToe
//
//  Created by Bob Pascazio on 10/5/15.
//  Copyright © 2015 Bob Pascazio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var drawX = true
    
    @IBOutlet weak var tl: UIImageView!
    @IBOutlet weak var tm: UIImageView!
    @IBOutlet weak var tr: UIImageView!
    @IBOutlet weak var ml: UIImageView!
    @IBOutlet weak var mm: UIImageView!
    @IBOutlet weak var mr: UIImageView!
    @IBOutlet weak var bl: UIImageView!
    @IBOutlet weak var bm: UIImageView!
    @IBOutlet weak var br: UIImageView!
    
    var tlv: Bool?
    var trv: Bool?
    var tmv: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tapGestureRecognizer1 = UITapGestureRecognizer(target:self, action:Selector("imageTapped:"))
        let tapGestureRecognizer2 = UITapGestureRecognizer(target:self, action:Selector("imageTapped:"))
        let tapGestureRecognizer3 = UITapGestureRecognizer(target:self, action:Selector("imageTapped:"))
        let tapGestureRecognizer4 = UITapGestureRecognizer(target:self, action:Selector("imageTapped:"))
        let tapGestureRecognizer5 = UITapGestureRecognizer(target:self, action:Selector("imageTapped:"))
        let tapGestureRecognizer6 = UITapGestureRecognizer(target:self, action:Selector("imageTapped:"))
        let tapGestureRecognizer7 = UITapGestureRecognizer(target:self, action:Selector("imageTapped:"))
        let tapGestureRecognizer8 = UITapGestureRecognizer(target:self, action:Selector("imageTapped:"))
        let tapGestureRecognizer9 = UITapGestureRecognizer(target:self, action:Selector("imageTapped:"))
       
        // TODO 1: Add the other squares to the gesture recognizer
        
        tl.addGestureRecognizer(tapGestureRecognizer1)
        tm.addGestureRecognizer(tapGestureRecognizer2)
        tr.addGestureRecognizer(tapGestureRecognizer3)
        mr.addGestureRecognizer(tapGestureRecognizer4)
        mm.addGestureRecognizer(tapGestureRecognizer5)
        ml.addGestureRecognizer(tapGestureRecognizer6)
        br.addGestureRecognizer(tapGestureRecognizer7)
        bm.addGestureRecognizer(tapGestureRecognizer8)
        bl.addGestureRecognizer(tapGestureRecognizer9)
    }
    
    func saveMove(imageView:UIImageView) {
        
        switch imageView {
        case tl: tlv = drawX
        case tr: trv = drawX
        case tm: tmv = drawX
        default: break
        }

//        if imageView == tl {
//            tlv = drawX
//        }
        
    }
    

    func imageTapped(sender: AnyObject)
    {
        print("image tapped")
        
        // TODO 2: Connect the gesture recognizer to the logic class
        
        if drawX {
            
            let gesture = sender as! UITapGestureRecognizer
            let tappedImage = gesture.view as! UIImageView
            saveMove(tappedImage)
            tappedImage.image = UIImage(named: "x")
            drawX = false
        } else {
            
            let gesture = sender as! UITapGestureRecognizer
            let tappedImage = gesture.view as! UIImageView
            saveMove(tappedImage)
            tappedImage.image = UIImage(named: "o")
            drawX = true
        }
        
        
        // TODO 3: Change the image according to the logic class with code
        // similar to this
        //        let gesture = sender as! UITapGestureRecognizer
        //        let imageView = gesture.view as! UIImageView
        //        imageView.image = UIImage(named:"o")
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

