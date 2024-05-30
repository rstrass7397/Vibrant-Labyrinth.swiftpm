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
    @State var yPos: CGFloat = 350
    @State var gFlag: Bool = false
    @State var collision: Bool = false
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var player: Player
    @State var maze = [mazePiece(positionX: 200, positionY: 400, SideX: 408, SideY: 10), mazePiece(positionX: 200, positionY: 0, SideX: 408, SideY: 10), mazePiece(positionX: 400, positionY: 200, SideX: 10, SideY: 408), mazePiece(positionX: 5, positionY: 200, SideX: 10, SideY: 408), mazePiece(positionX: 100, positionY: 250, SideX: 10, SideY: 308), mazePiece(positionX: 200, positionY: 250, SideX: 10, SideY: 108), mazePiece(positionX: 300, positionY: 300, SideX: 208, SideY: 10), mazePiece(positionX: 200, positionY: 100, SideX: 208, SideY: 10), mazePiece(positionX: 300, positionY: 150, SideX: 10, SideY: 108)]

    var body: some View {
        VStack {

            
            ZStack {
                //Play Area
                Rectangle()
                    .frame(width: 400, height: 400)
                    .foregroundStyle(.black)
                    .position(x: 200, y: 200)
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
                            .position(x: CGFloat(piece.positionX), y: CGFloat(piece.positionY))
                    }
                    Rectangle()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.pink)
                        .position(x: xPos, y: yPos)
                }
                .foregroundStyle(.yellow)
                // Button appears upon completion. Above it, text. It says "Congratulations! You beat level 1. Do you want to continue. to level 2?" Button can say like "Let's go" or something. Button transfers user to the indigo maze level.

            }
            VStack{
                Text("Score : \(player.score)")
                    .font(.title)
            }
            .font(.headline)
            .foregroundColor(.black)
            .position(x:200, y:210)

            Spacer()
            
            }
        
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
        .alert("Level Completed", isPresented: $gFlag) {
            NavigationLink(destination: SecondLevel()
            ) {
                Text("Next Level")
            }
            Button(action: {dismiss()}, label: {
                Text("Select a Level")
            })
            NavigationLink(destination: ContentView()
            ) {
                Text("Main Menu")
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
    
    func checkCollision(x: Int, y: Int){
        collision = false
        for piece in maze{
            if(((x-20) >= (piece.positionX+piece.SideX/2) ) || ((x+20) <= (piece.positionX - piece.SideX/2) ) || ( (y-20) >= (piece.positionY + piece.SideY/2) ) || ( (y+20) <= (piece.positionY - piece.SideY/2) )){
                continue
            }
            else{
                collision = true
                return
            }
        }
    }
    
    func leftAction() {
        checkCollision(x: Int(xPos-20), y: Int(yPos))
        if (collision == false){
            withAnimation{
                xPos -= 20
                reachGoal()
            }
        }
    }
    
    func rightAction() {
        checkCollision(x: Int(xPos+20), y: Int(yPos))
        if collision == false {
            withAnimation{
                xPos += 20
                reachGoal()
            }
        }
    }
    
    func upAction() {
        checkCollision(x: Int(xPos), y: Int(yPos-20))
        if collision == false {
            withAnimation{
                yPos -= 20
                reachGoal()
            }
        }
    }
    
    func downAction() {
        checkCollision(x: Int(xPos), y: Int(yPos+20)) 
        if collision == false {
            withAnimation{
                yPos += 20
                reachGoal()
            }
        }
     }
    
    func reachGoal(){
        if ( (xPos >= 0)&&(xPos <= 100)&&(yPos>=300)&&(yPos<=400) ){
            player.score += 1
            gFlag = true
        } 
        else{
            gFlag = false
        }
    }
 }


struct mazePiece: Hashable{
    var positionX: Int
    var positionY: Int
    var SideX: Int
    var SideY: Int
}


