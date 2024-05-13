
//
//  FirstLevel.swift
//  Vibrant Labyrinth
//
//  Created by Sia Ryu on 4/23/24.
//
// Note to Sia and Ryan: This level is quite difficult. Would it be better to make this a later level and have level 1 be much easier? - Jade


import Foundation
import SwiftUI

struct FirstLevel:View {
    var body: some View {
        //This is a placeholder. Please make this view (and every other level view) 400 x 400
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: 400, height: 400)
                //The Goal
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.red)
                    .offset(x: -170, y: -175)
                //Starting Area
                Rectangle()
                    .frame(width: 100, height: 100)
                    .offset(x: 150, y: -100)
                //The Maze
                ZStack {
                    Rectangle()
                        .frame(width: 10, height: 400)
                        .offset(x: 200, y: 0)
                    Rectangle()
                        .frame(width: 10, height: 400)
                        .offset(x: -200, y: 0)
                    Rectangle()
                        .frame(width: 400, height: 10)
                        .offset(x: 0, y: 200)
                    Rectangle()
                        .frame(width: 400, height: 10)
                        .offset(x: 0, y: -200)
                    Rectangle()
                        .frame(width: 100, height: 10)
                        .offset(x: -150, y: -150)
                    Rectangle()
                        .frame(width: 10, height: 50)
                        .offset(x: -105, y: -125)
                    Rectangle()
                        .frame(width: 10, height: 100)
                        .offset(x: -50, y: -100)
                    Rectangle()
                        .frame(width: 50, height: 10)
                        .offset(x: -125, y: -100)
                    Rectangle()
                        .frame(width: 10, height: 100)
                        .offset(x: -145, y: -50)
                    Rectangle()
                        .frame(width: 100, height: 10)
                        .offset(x: -5, y: -150)
                    Rectangle()
                        .frame(width: 100, height: 10)
                        .offset(x: -5, y: 0)
                    Rectangle()
                        .frame(width: 10, height: 100)
                        .offset(x: 0, y: -50)
                    Rectangle()
                        .frame(width: 10, height: 150)
                        .offset(x: 50, y: -125)
                    Rectangle()
                        .frame(width: 10, height: 50)
                        .offset(x: 50, y: 20)
                    Rectangle()
                        .frame(width: 10, height: 100)
                        .offset(x: -100, y: 0)
                    Rectangle()
                        .frame(width: 50, height: 10)
                        .offset(x: -125, y: 45)
                    Rectangle()
                        .frame(width: 10, height: 100)
                        .offset(x: -145, y: 100)
                    Rectangle()
                        .frame(width: 50, height: 10)
                        .offset(x: -125, y: -45)
                    Rectangle()
                        .frame(width: 100, height: 10)
                        .offset(x: -50, y: 45)
                    Rectangle()
                        .frame(width: 10, height: 50)
                        .offset(x: 50, y: 70)
                    Rectangle()
                        .frame(width: 10, height: 50)
                        .offset(x: -95, y: 125)
                    Rectangle()
                        .frame(width: 10, height: 55)
                        .offset(x: -55, y: 175)
                    Rectangle()
                        .frame(width: 50, height: 10)
                        .offset(x: -75, y: 150)
                    Rectangle()
                        .frame(width: 50, height: 10)
                        .offset(x: -75, y: 100)
                    Rectangle()
                        .frame(width: 50, height: 10)
                        .offset(x: 30, y: 100)
                    Rectangle()
                        .frame(width: 10, height: 50)
                        .offset(x: 0, y: 120)
                    Rectangle()
                        .frame(width: 10, height: 50)
                        .offset(x: 0, y: 120)
                    Rectangle()
                        .frame(width: 60, height: 10)
                        .offset(x: 25, y: 150)
                    Rectangle()
                        .frame(width: 10, height: 100)
                        .offset(x: 100, y: 150)
                    Rectangle()
                        .frame(width: 95, height: 10)
                        .offset(x: 100, y: 50)
                    Rectangle()
                        .frame(width: 10, height: 100)
                        .offset(x: 150, y: 95)
                    Rectangle()
                        .frame(width: 10, height: 150)
                        .offset(x: 100, y: -25)
                    Rectangle()
                        .frame(width: 50, height: 10)
                        .offset(x: 25, y: -95)
                    Rectangle()
                        .frame(width: 100, height: 10)
                        .offset(x: 100, y: -150)
                    Rectangle()
                        .frame(width: 10, height: 100)
                        .offset(x: 150, y: 0)
                    
                }
                .foregroundStyle(.indigo)
            }
            ControllerView()
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)

        
        

    }
}


