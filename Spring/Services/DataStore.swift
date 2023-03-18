//
//  DataStore.swift
//  Spring
//
//  Created by Alexey Manokhin on 18.03.2023.
//

import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let preset = AnimationPreset.allCases
    let curve = AnimationCurve.allCases
    let force = [1.0, 1.2, 1.5, 1.7, 2.0]
    let duration = [1.0, 1.2, 1.5, 1.7, 2.0]
    let delay = [0.1, 0.2, 0.3, 0.4, 0.5]
    
    private init() {}
}
