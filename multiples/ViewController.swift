//
//  ViewController.swift
//  multiples
//
//  Created by Jawad Shuaib on 2016-10-10.
//  Copyright © 2016 Jawad Shuaib. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var maxMultiple = 25
    var currentMultiple = 0
    var multipleSelected = 0
    var multiple = 0
    
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var multipleTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
   
    @IBOutlet weak var addLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    

    @IBAction func play_button_pressed (sender: UIButton!) {
        if multipleTxt.text != nil && multipleTxt.text != "" {
            logoImg.isHidden = true
            multipleTxt.isHidden = true
            playBtn.isHidden = true
            
            addLbl.isHidden = false
            addBtn.isHidden = false
            
            multipleSelected = Int(multipleTxt.text!)!
        }
    }
    
    @IBAction func add_btn_pressed (sender: UIButton!) {
        
        multiple = currentMultiple + multipleSelected
        addLbl.text = "\(currentMultiple) + \(multipleSelected) = \(multiple)"
        
        if currentMultiple >= maxMultiple {
            logoImg.isHidden = false
            multipleTxt.isHidden = false
            playBtn.isHidden = false
            
            addLbl.isHidden = true
            addBtn.isHidden = true
            
            currentMultiple = 0
            multipleSelected = 0
            multiple = 0
            
            addLbl.text = "Start Adding"
        } else {
            currentMultiple += multipleSelected
        }
    }
    


}

