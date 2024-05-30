//
//  Aspects.swift
//  Vibrant Labyrinth
//
//  Created by River Lynch on 5/28/24.
//

import Foundation

class Aspects: ObservableObject {
    @Published var glassesAreSelected: Bool
    @Published var eyesAreSelected: Bool
    @Published var mustacheIsSelected: Bool
    
    init(glassesAreSelected: Bool, eyesAreSelected: Bool, mustacheIsSelected: Bool) {
        self.glassesAreSelected = glassesAreSelected
        self.eyesAreSelected = eyesAreSelected
        self.mustacheIsSelected = mustacheIsSelected
    }
}
