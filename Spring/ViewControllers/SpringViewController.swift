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
    @IBOutlet var launchButton: UIButton!
    
    private var animate = Animation.getAnimation
    
    override func viewDidLoad() {
        super.viewDidLoad()
        launchButton.setTitle("Запустить \(animate.preset.rawValue)", for: .normal)
        presetAnimationLabel.text = animate.description
    }
    
    @IBAction func launchButton(_ sender: UIButton) {
        presetAnimationLabel.text = animate.description
        
        actionView.animation = animate.preset.rawValue
        actionView.curve = animate.curve.rawValue
        actionView.force = animate.force
        actionView.duration = animate.duration
        actionView.delay = animate.delay
        
        actionView.animate()
        
        presetAnimationLabel.text = animate.description
        animate = Animation.getAnimation
        sender.setTitle("Запустить  \(animate.preset.rawValue)", for: .normal)
    }
}

