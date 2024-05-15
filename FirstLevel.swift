//
//  EasyLevel.swift
//  Vibrant Labyrinth
//
//  Created by River Lynch on 5/15/24.
//

import SwiftUI

struct FirstLevel: View {
    var body: some View {
        VStack {
            ZStack {
                //Play Area
                Rectangle()
                    .frame(width: 400, height: 400)
                    .foregroundStyle(.black)
                //Goal
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.red)
                    .offset(x: -150, y: 150)
                //Start
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.green)
                    .offset(x: 150, y: 150)
                ZStack {
                    //Maze
                    Rectangle()
                        .frame(width: 400, height: 10)
                        .offset(x: 0, y: 200)
                    Rectangle()
                        .frame(width: 400, height: 10)
                        .offset(x: 0, y: -200)
                    Rectangle()
                        .frame(width: 10, height: 400)
                        .offset(x: 200, y: 0)
                    Rectangle()
                        .frame(width: 10, height: 400)
                        .offset(x: -200, y: 0)
                    Rectangle()
                        .frame(width: 10, height: 300)
                        .offset(x: -100, y: 50)
                    Rectangle()
                        .frame(width: 10, height: 100)
                        .offset(x: 0, y: 50)
                    Rectangle()
                        .frame(width: 200, height: 10)
                        .offset(x: 100, y: 100)
                    Rectangle()
                        .frame(width: 200, height: 10)
                        .offset(x: 0, y: -100)
                    Rectangle()
                        .frame(width: 10, height: 100)
                        .offset(x: 100, y: -50)
                    //Smoothing out jagged edges
                    Circle()
                        .frame(width: 10)
                    Circle()
                        .frame(width: 10)
                        .offset(x: 0, y: 100)
                    Circle()
                        .frame(width: 10)
                        .offset(x: 100, y: 0)
                    Circle()
                        .frame(width: 10)
                        .offset(x: -100, y: -100)
                    Circle()
                        .frame(width: 10)
                        .offset(x: 100, y: -100)
                    Circle()
                        .frame(width: 10)
                        .offset(x: 200, y: -200)
                    Circle()
                        .frame(width: 10)
                        .offset(x: -200, y: 200)
                    Circle()
                        .frame(width: 10)
                        .offset(x: 200, y: 200)
                    Circle()
                        .frame(width: 10)
                        .offset(x: -200, y: -200)
                }
                .foregroundStyle(.yellow)
                // Button appears upon completion. Above it, text. It says "Congratulations! You beat level 1. Do you want to continue. to level 2?" Button can say like "Let's go" or something. Button transfers user to the indigo maze level.
            }
        }
    }
}
