//
//  ViewController.swift
//  Multiples-of-Two
//
//  Created by Samer Mujibuddin on 6/15/16.
//  Copyright © 2016 Samer Mujibuddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //I also ended up deleting my Main.storyboard file, I think the code works, but i didnt get to test it. I used the course notes as a reference However. 
    //Variables
    var multiple = 0
    var addingSum = 0
    let maxSum = 10
    
    //Outlets
    
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var sumLbl: UILabel!
    @IBOutlet weak var whatMultiple: UITextField!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var plyBtn: UIButton!
    
    
    //Actions
    @IBAction func onPlayBtnPressed(sender: AnyObject) {
    
        
        if whatMultiple.text != nil && whatMultiple.text != ""{
            
            logoImg.hidden = true
            whatMultiple.hidden = true
            plyBtn.hidden = true
            sumLbl.hidden = false
            addBtn.hidden = false
            
            func multipleLbl () {
                sumLbl.text = "Press Add to Add"
            }
            
            multipleLbl()
            multiple = Int(whatMultiple.text!)!
            addingSum = 0
            
            }
        
            }
   
    @IBAction func onAddBtnPressed(sender: AnyObject) {
    
        
        
        let newSum = addingSum + multiple
        
            func valueLbl(prevSum: Int, mul: Int, sum: Int) {
            sumLbl.text = "\(prevSum) + \(mul) = \(sum)"
            }
            valueLbl(addingSum, mul: multiple, sum: newSum)
            addingSum = addingSum + multiple
        
        
        func restartGame () {
            multiple = 0
            whatMultiple.hidden = false
            whatMultiple.text = ""
            plyBtn.hidden = false
            logoImg.hidden = false
            sumLbl.hidden = true
            addBtn.hidden = true
            multipleLbl ()
        }
        func multipleLbl () {
            sumLbl.text = "Press Add to Add"
        }
        
        
        func gameOver () -> Bool {
            if addingSum >= maxSum {
                return true
            } else {
                return false
            }
            
            
        }
        
        
        if gameOver() {
            restartGame()
        }
        
      
        
    }
    

}