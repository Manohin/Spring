//
//  DataStore.swift
//  Spring
//
//  Created by Alexey Manokhin on 18.03.2023.
//

import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
