
//
//  FirstLevel.swift
//  Vibrant Labyrinth
//
//  Created by Sia Ryu on 4/23/24.
//
// Note to Sia and Ryan: This level is quite difficult. Would it be better to make this a later level and have level 1 be much easier? - Jade


import Foundation
import SwiftUI

struct SecondLevel:View {
    @State var timer: Timer?
    @State var xPos: CGFloat = 350
    @State var yPos: CGFloat = -300
    var body: some View {
        //This is a placeholder. Please make this view (and every other level view) 400 x 400
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

        Rectangle()
            .frame(width: 15, height: 15)
            .foregroundColor(.pink)
            .position(x: xPos, y: yPos)
        VStack {
            Button(action:{
                yPos -= 20
            }, label: {
                Image(systemName: "arrowshape.up.fill")
                    .font(.largeTitle)
                    .onTapGesture {
                        upAction()
                    }
                    .gesture(
                        LongPressGesture()
                            .onEnded { _ in
                                timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                                    upAction()
                                }
                            }
                            .sequenced(before:
                                        DragGesture(minimumDistance: 0)
                                .onEnded { _ in
                                    timer?.invalidate()
                                    timer = nil
                                }
                                      )
                    )
            })
            
            
            HStack {
                Button(action: {
                    xPos -= 20
                }, label: {
                    Image(systemName: "arrowshape.left.fill")
                        .font(.largeTitle)
                        .onTapGesture {
                            leftAction()
                        }
                        .gesture(
                            LongPressGesture()
                                .onEnded { _ in
                                    timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                                        leftAction()
                                    }
                                }
                                .sequenced(before:
                                            DragGesture(minimumDistance: 0)
                                    .onEnded { _ in
                                        timer?.invalidate()
                                        timer = nil
                                    }
                                          )
                        )
                })
                
                Image(systemName: "pencil.tip")
                    .font(.title)
                    .opacity(0)
                
                Button(action: {
                    xPos += 20
                }, label: {
                    Image(systemName: "arrowshape.right.fill")
                        .font(.largeTitle)
                        .onTapGesture {
                            rightAction()
                        }
                        .gesture(
                            LongPressGesture()
                                .onEnded { _ in
                                    timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                                        rightAction()
                                    }
                                }
                                .sequenced(before:
                                            DragGesture(minimumDistance: 0)
                                    .onEnded { _ in
                                        timer?.invalidate()
                                        timer = nil
                                    }
                                          )
                        )
                })
            }
            Button(action: {
                yPos += 20
            }, label: {
                Image(systemName: "arrowshape.down.fill")
                    .font(.largeTitle)
                    .onTapGesture {
                        downAction()
                    }
                    .gesture(
                        LongPressGesture()
                            .onEnded { _ in
                                timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                                    downAction()
                                }
                            }
                            .sequenced(before:
                                        DragGesture(minimumDistance: 0)
                                .onEnded { _ in
                                    timer?.invalidate()
                                    timer = nil
                                }
                                      )
                    )
            })
        }
        .frame(width: 400, height: 180)
//uncomment this when level 2 works V
//        .navigationBarBackButtonHidden(true)
    }
    func leftAction() {
        xPos -= 20
    }
    func rightAction() {
        xPos += 20
    }
    func upAction() {
        yPos -= 20
    }
    func downAction() {
        yPos += 20
    }
}



