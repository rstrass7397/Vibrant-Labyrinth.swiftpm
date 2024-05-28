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
    @State var yPos: CGFloat = -80
    @State var collision: Bool = false
    @State var wins: Int = 0
    @State var losses: Int = 0
    @State var maze = [mazePiece(positionX: 200, positionY: -20, SideX: 405, SideY: 10), ]

    
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
                    .position(x: 50, y: 350)
                //Start
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.green)
                    .position(x: 350, y: 350)
                ZStack {
                    //Maze
                    ForEach(maze, id: \.self){piece in
                        Rectangle()
                            .frame(width: CGFloat(piece.SideX), height: CGFloat(piece.SideY))
                            .position(x: CGFloat(piece.positionX), y: CGFloat(piece.positionY) + 420)
                            .foregroundColor(.black)
                    }
                    Rectangle()
                        .frame(width: 405, height: 10)
                        .position(x: 200, y: 0)
                    Rectangle()
                        .frame(width: 10, height: 400)
                        .position(x: 400, y: 200)
                    Rectangle()
                        .frame(width: 10, height: 400)
                        .position(x: 0, y: 200)
                    Rectangle()
                        .frame(width: 10, height: 300)
                        .position(x: 100, y:250)
                    Rectangle()
                        .frame(width: 10, height: 100)
                        .position(x: 200, y: 250)
                    Rectangle()
                        .frame(width: 200, height: 10)
                        .position(x: 300, y: 300)
                    Rectangle()
                        .frame(width: 200, height: 10)
                        .position(x: 200, y: 100)
                    Rectangle()
                        .frame(width: 10, height: 100)
                        .position(x: 300, y: 150)
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
        
        
        VStack {
            
            Button(action:{
                upAction()
            }, label: {
                Image(systemName: "arrowshape.up.fill")
                    .font(.largeTitle)
            })
            
            
            HStack {
                Button(action: {
                    leftAction()
                    
                }, label: {
                    Image(systemName: "arrowshape.left.fill")
                        .font(.largeTitle)
                })
                
                Image(systemName: "pencil.tip")
                    .font(.title)
                    .opacity(0)
                
                Button(action: {
                    rightAction()
                }, label: {
                    Image(systemName: "arrowshape.right.fill")
                        .font(.largeTitle)
                })
            }
            Button(action: {
                downAction()
            }, label: {
                Image(systemName: "arrowshape.down.fill")
                    .font(.largeTitle)
            })
        }
        .frame(width: 400, height: 180)
        
        
    }
    func leftAction() {
        var dontmove = false
        for piece in maze{
            if ((piece.positionX - Int(xPos - 20) >= -1 * (20 + (piece.SideX / 2)) && piece.positionX - Int(xPos - 20) <= (20 + (piece.SideX / 2))) && (piece.positionY - Int(yPos) >= -1 * (20 + (piece.SideY / 2)) && piece.positionY - Int(yPos) <= (20 + (piece.SideY / 2)))) {
                dontmove = true
            }
            if dontmove == false {
                withAnimation{
                    xPos -= 20
                }
            }
        }
    }
    func rightAction() {
        var dontmove = false
        for piece in maze{
            if ((piece.positionX - Int(xPos + 20) >= -1 * (20 + (piece.SideX / 2)) && piece.positionX - Int(xPos + 20) <= (20 + (piece.SideX / 2))) && (piece.positionY - Int(yPos) >= -1 * (20 + (piece.SideY / 2)) && piece.positionY - Int(yPos) <= (20 + (piece.SideY / 2)))) {
                dontmove = true
            }
            if dontmove == false {
                withAnimation{
                    xPos += 20
                }
            }
        }
    }
    func upAction() {
        var dontmove = false
        for piece in maze{
            if ((piece.positionY - Int(yPos - 20) >= -1 * (20 + (piece.SideY / 2)) && piece.positionY - Int(yPos - 20) <= (20 + (piece.SideY / 2))) && (piece.positionX - Int(xPos) >= -1 * (20 + (piece.SideX / 2)) && piece.positionX - Int(xPos) <= (20 + (piece.SideX / 2)))) {
                dontmove = true
            }
            if dontmove == false {
                withAnimation{
                    yPos -= 20
                }
            }
        }
    }
    func downAction() {
        var dontmove = false
        for piece in maze{
            if ((piece.positionY - Int(yPos + 20) >= -1 * (20 + (piece.SideY / 2)) && piece.positionY - Int(yPos + 20) <= (20 + (piece.SideY / 2))) && (piece.positionX - Int(xPos) >= -1 * (20 + (piece.SideX / 2)) && piece.positionX - Int(xPos) <= (20 + (piece.SideX / 2)))) {
                dontmove = true
            }
            if dontmove == false {
                withAnimation{
                    yPos += 20
                }
            }
        }
    }
}

struct mazePiece: Hashable{
    var positionX: Int
    var positionY: Int
    var SideX: Int
    var SideY: Int
}

