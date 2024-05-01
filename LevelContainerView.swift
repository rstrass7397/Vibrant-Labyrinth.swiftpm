//
//  LevelContainerView.swift
//  Vibrant Labyrinth
//
//  Created by Ryan Strass on 4/29/24.
//

import Foundation
import SwiftUI

struct LevelContainerView:View {
    var body: some View {

        VStack{
            FirstLevel()
            ControllerView()

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
    }
}
