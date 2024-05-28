//
//  LevelSelectView.swift
//  Vibrant Labyrinth
//
//  Created by Ryan Strass on 5/1/24.
//

import Foundation
import SwiftUI

struct LevelSelectView: View {
    @State var number = 1
    @State var lvl1active = true
    @State var lvl1visibility = 1.0
    @State var lvl2active = false
    @State var lvl2visibility = 0.0
    var body: some View {
        Text("Level One")
            .frame(width: 400, height: 50)
            .bold()
            .font(.system(size: 20))
            .foregroundColor(.black)
        ZStack{
            NavigationLink(destination: FirstLevel(player: Player())
            ) {
                VStack{
                    ZStack{
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
                                .frame(width: 405, height: 10)
                                .offset(x: 0, y: 200)
                            Rectangle()
                                .frame(width: 405, height: 10)
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
                    }
                }
            }
            .disabled(lvl1active)
            .opacity(lvl1visibility)
            NavigationLink(destination: SecondLevel() 
            ) {
                VStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 400, height: 400)
                            .foregroundStyle(.black)
                        //The Goal
                        Rectangle()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(.red)
                            .offset(x: -170, y: -175)
                        //Starting Area
                        Rectangle()
                            .frame(width: 100, height: 100)
                            .offset(x: 150, y: -100)
                            .foregroundStyle(.green)
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
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
            }
            .disabled(lvl2active)
            .opacity(lvl2visibility)
        }
        HStack{
            Button(action: {
                    number -= 1
                if number <= 0 {
                    number = 2
                }
                levelShown()
            }, label: {
                Image(systemName: "arrowshape.left.fill")
                    .resizable()
                    .frame(width: 70, height: 50)
            })
            Button(action: {
                    number += 1
                if number >= 3 {
                    number = 1
                }
                levelShown()

            }, label: {
                Image(systemName: "arrowshape.right.fill")
                    .resizable()
                    .frame(width: 70, height: 50)
            })
        

        }
    }
    

    func levelShown() {
        if number == 1 {
            lvl1active = false
            lvl1visibility = 1.0
            lvl2active = true
            lvl2visibility = 0.0
        } else if number == 2{
            lvl1active = true
            lvl1visibility = 0.0
            lvl2active = false
            lvl2visibility = 1.0
        }
    }
}

