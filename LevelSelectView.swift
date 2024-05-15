//
//  LevelSelectView.swift
//  Vibrant Labyrinth
//
//  Created by Ryan Strass on 5/1/24.
//

import Foundation
import SwiftUI

struct LevelSelectView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Text("Level One")
                        .frame(width: 400, height: 50)
                            .bold()
                            .font(.system(size: 20))
                            .foregroundColor(.black)
        Button(action: {
            dismiss()
        }, label: {
            VStack{
                FirstLevel()
                    .frame(width: 400, height: 400)

            }
        })
        .navigationBarBackButtonHidden(true)
    }
}

