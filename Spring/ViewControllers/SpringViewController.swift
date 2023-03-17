//
//  SpringViewController.swift
//  Spring
//
//  Created by Alexey Manokhin on 15.03.2023.
//

import UIKit
import SpringAnimation

final class SpringViewController: UIViewController {
    
    
    @IBOutlet var actionView: SpringView!
    
    @IBOutlet var presetAnimationLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var launchButton: UIButton!
    
    private var animate = Animation.getAnimation
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        launchButton.setTitle("Запустить  \(animate.preset.rawValue)", for: .normal)
        
    }
    
    @IBAction func launchButton(_ sender: UIButton) {
        
        actionView.animation += animate.preset.rawValue
        presetAnimationLabel.text = "Preset: " + animate.preset.rawValue
        curveLabel.text = "Curve: " + animate.curve.rawValue
        forceLabel.text = "Force: " + String(animate.force)
        durationLabel.text = "Duration: " + String(animate.duration)
        delayLabel.text = "Delay: " + String(animate.delay)
        
        animate = Animation.getAnimation
        sender.setTitle("Запустить  \(animate.preset.rawValue)", for: .normal)
        
    }
    
}

