//
//  DataManager.swift
//  Spring
//
//  Created by Alexey Manokhin on 16.03.2023.
//

import SpringAnimation

class DataManager {
    static let shared = DataManager()

    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    let forces = [0.5, 1.0, 1.3, 1.6, 1.8, 2.2, 2.5, 2.9, 3.0]
    let durations = [0.5, 1.0, 1.3, 1.6, 1.8, 2.2, 2.5, 2.9, 3.0]
    let delays = [0.5, 1.0, 1.3, 1.6, 1.8, 2.2, 2.5, 2.9, 3.0]
    
    private init() {}
}
