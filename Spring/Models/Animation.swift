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
    
    static var getAnimation: Animation {
        Animation(
            preset: DataManager.shared.animations.randomElement() ?? .fadeIn,
            curve: DataManager.shared.curves.randomElement() ?? .easeIn,
            force: DataManager.shared.forces.randomElement() ?? 0.0,
            duration: DataManager.shared.durations.randomElement() ?? 0.0,
            delay: DataManager.shared.delays.randomElement() ?? 0.0
        )
    }
}
