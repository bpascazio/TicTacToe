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
    var mlv: Bool?
    var mrv: Bool?
    var mmv: Bool?
    var blv: Bool?
    var brv: Bool?
    var bmv: Bool?
    
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
    
    func saveMove(imageView:UIImageView) -> Bool {
        
        var savedMove = false
        
        switch imageView {
        case tl:
            if let _ = tlv {
                print("already a value")
            } else {
                tlv = drawX
                savedMove = true
            }
        case tr:
            if let _ = trv {
                print("already a value")
            } else {
                trv = drawX
                savedMove = true
            }
        case tm:
            if let _ = tmv {
                print("already a value")
            } else {
                tmv = drawX
                savedMove = true
            }
        case ml:
            if let _ = mlv {
                print("already a value")
            } else {
                mlv = drawX
                savedMove = true
            }
        case mr:
            if let _ = mrv {
                print("already a value")
            } else {
                mrv = drawX
                savedMove = true
            }
        case mm:
            if let _ = mmv {
                print("already a value")
            } else {
                mmv = drawX
                savedMove = true
            }
        case bl:
            if let _ = blv {
                print("already a value")
            } else {
                blv = drawX
                savedMove = true
            }
        case br:
            if let _ = brv {
                print("already a value")
            } else {
                brv = drawX
                savedMove = true
            }
        case bm:
            if let _ = bmv {
                print("already a value")
            } else {
                bmv = drawX
                savedMove = true
            }
        default: break
        }

        return savedMove
    }
    

    func imageTapped(sender: AnyObject)
    {
        print("image tapped")
        
        // TODO 2: Connect the gesture recognizer to the logic class
        
        if drawX {
            
            let gesture = sender as! UITapGestureRecognizer
            let tappedImage = gesture.view as! UIImageView
            if saveMove(tappedImage) {
                tappedImage.image = UIImage(named: "x")
                drawX = false
            }
        } else {
            
            let gesture = sender as! UITapGestureRecognizer
            let tappedImage = gesture.view as! UIImageView
            if saveMove(tappedImage) {
                tappedImage.image = UIImage(named: "o")
                drawX = true
            }
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

