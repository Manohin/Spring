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
            preset: DataStore.shared.preset.randomElement() ?? .fadeIn,
            curve: DataStore.shared.curve.randomElement() ?? .easeIn,
            force: DataStore.shared.force.randomElement() ?? 1.0,
            duration: DataStore.shared.duration.randomElement() ?? 1.0,
            delay: DataStore.shared.delay.randomElement() ?? 0.3
        )
    }
}
