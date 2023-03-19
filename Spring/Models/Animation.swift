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
        Force: \(String(format: "%.1f", force))
        Duration: \(String(format: "%.1f", duration))
        Delay: \(String(format: "%.1f", delay))
        """
    }
    
    static var getAnimation: Animation {
        Animation(
            preset: DataStore.shared.presets.randomElement() ?? .fadeIn,
            curve: DataStore.shared.curves.randomElement() ?? .easeIn,
            force: Double.random(in: 1...3),
            duration: Double.random(in: 1...3),
            delay: Double.random(in: 0.1...0.5)
        )
    }
}
