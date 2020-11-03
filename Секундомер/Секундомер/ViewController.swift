//
//  ViewController.swift
//  Секундомер
//
//  Created by Григорий Виняр on 03.11.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelZero: UILabel!
    
    @IBOutlet weak var buttonStart: UIButton!
    
    @IBOutlet weak var buttonStop: UIButton!
    
    var timer = Timer()
    
    var timerDisplayed = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    


    @IBAction func buttonPressStart(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func buttonPressStop(_ sender: UIButton) {
        timer.invalidate()
        timerDisplayed = 0
        labelZero.text = "0"
    }
    
    
    @objc func Action() {
        timerDisplayed += 1
        labelZero.text = String(timerDisplayed)
        
    }
    @IBAction func buttonPressPause(_ sender: UIButton) {
        timer.invalidate()
    }
    
}

