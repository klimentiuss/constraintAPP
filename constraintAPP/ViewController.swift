//
//  ViewController.swift
//  constraintAPP
//
//  Created by Daniil Klimenko on 14.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    enum CurrentLight {
        case red, yellow, green
    }

    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
        
        redView.layer.cornerRadius = 100
        yellowView.layer.cornerRadius = 100
        greenView.layer.cornerRadius = 100
    }

    @IBAction func startButtonPressed() {
        
        
        startButton.setTitle("Next", for: .normal)
        
        
        switch currentLight {
        case .red:
            greenView.alpha = lightIsOff
            redView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redView.alpha = lightIsOff
            yellowView.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowView.alpha = lightIsOff
            greenView.alpha = lightIsOn
            currentLight = .red
        }
        
        
    }
    
}
    


