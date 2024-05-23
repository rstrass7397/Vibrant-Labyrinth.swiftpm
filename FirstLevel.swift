//
//  EasyLevel.swift
//  Vibrant Labyrinth
//
//  Created by River Lynch on 5/15/24.
//

import SwiftUI

struct FirstLevel: View {
    @State var timer: Timer?
    @State var xPos: CGFloat = 350
    @State var yPos: CGFloat = -50
    @State var collision: Bool = false
    @State var wins: Int = 0
    @State var losses: Int = 0
    
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
                // Button appears upon completion. Above it, text. It says "Congratulations! You beat level 1. Do you want to continue. to level 2?" Button can say like "Let's go" or something. Button transfers user to the indigo maze level.
                self.collision ? Text("You hit the wall!") : nil
            }
            HStack{
                Text("Wins: \(wins)")
                Text("Losses: \(losses)")
            }
            .font(.headline)
            .foregroundColor(.black) 
        }
        Rectangle()
            .frame(width: 40, height: 40)
            .foregroundColor(.pink)
            .position(x: xPos, y: yPos)
        //            .onChanged({ value in
        //                self.xPos = value.location.x
        //                self.yPos = value.location.y
        //                self.checkCollision()
        //})
        
        
            
        
        
        VStack {
            
            Button(action:{
                yPos -= 20
            }, label: {
                Image(systemName: "arrowshape.up.fill")
                    .font(.largeTitle)
            })
            
            
            HStack {
                Button(action: {
                    xPos -= 20
                }, label: {
                    Image(systemName: "arrowshape.left.fill")
                        .font(.largeTitle)
                })
                
                Image(systemName: "pencil.tip")
                    .font(.title)
                    .opacity(0)
                
                Button(action: {
                    xPos += 20
                }, label: {
                    Image(systemName: "arrowshape.right.fill")
                        .font(.largeTitle)
                })
            }
            Button(action: {
                yPos += 20
            }, label: {
                Image(systemName: "arrowshape.down.fill")
                    .font(.largeTitle)
            })
        }
        .frame(width: 400, height: 180)
        
        
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
