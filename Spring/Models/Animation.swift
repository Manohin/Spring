//
//  Animation.swift
//  Spring
//
//  Created by Alexey Manokhin on 16.03.2023.
//

import SpringAnimation

struct Animation {
    let preset: AnimationPreset
    let curve: AnimationCurve
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        return """
        Preset: \(preset)
        Curve: \(curve)
        Force: \(String(format: "%.02f", force))
        Duration: \(String(format: "%.02f", duration))
        Delay: \(String(format: "%.02f", delay))
        """
    }
    
    static var getAnimation: Animation {
        Animation(
            preset: AnimationPreset.allCases.randomElement() ?? .fadeIn,
            curve: AnimationCurve.allCases.randomElement() ?? .easeIn,
            force: Double.random(in: 1...3),
            duration: Double.random(in: 1...3),
            delay: Double.random(in: 0.1...0.5)
        )
    }
}
