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
            Rectangle()
                .frame(width: 400, height: 30)
                .foregroundColor(.white)
            ControllerView()
            NavigationLink(destination: LevelSelectView()
            ) {
                Text("Select Level")
                    .frame(width: 300, height: 80)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 45))
                    .background(RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                        .frame(width: 300, height: 80)
                        .foregroundColor(.white))
                    .foregroundColor(.black)
                    .shadow(radius: 5)
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
    }
}
