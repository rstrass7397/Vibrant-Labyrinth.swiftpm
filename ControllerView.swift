//
//  ControllerView.swift
//  Vibrant Labyrinth
//
//  Created by River Lynch on 4/19/24.
//

import SwiftUI

struct ControllerView: View {
    @State var timer: Timer?
    @State var xPos: CGFloat = 200
    @State var yPos: CGFloat = 300
    var body: some View {
        Rectangle()
            .frame(width: 100, height: 100)
            .position(x: xPos,y: yPos)
        VStack {
            Button(action:{
                yPos -= 10
            }, label: {
                Image(systemName: "arrowshape.up.fill")
                    .font(.largeTitle)
            })
            
            
            HStack {
                Button(action: {
                    xPos -= 10
                }, label: {
                    Image(systemName: "arrowshape.left.fill")
                        .font(.largeTitle)
                        .onTapGesture {
                            self.leftAction()
                        }
                        .gesture(
                            LongPressGesture()
                                .onEnded { _ in
                                    print("start...")
                                    self.timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { _ in
                                        self.leftAction()
                                    }
                                }
                                .sequenced(before:
                                            DragGesture(minimumDistance: 0)
                                    .onEnded { _ in
                                        print("end...")
                                        self.timer?.invalidate()
                                        self.timer = nil
                                    }
                                          )
                        )
                })
                
                Image(systemName: "pencil.tip")
                    .font(.title)
                    .opacity(0)
                
                Button(action: {
                    xPos += 10
                }, label: {
                    Image(systemName: "arrowshape.right.fill")
                        .font(.largeTitle)
                })
            }
            Button(action: {
                yPos += 10
            }, label: {
                Image(systemName: "arrowshape.down.fill")
                    .font(.largeTitle)
            })
        }
    }
        func leftAction() {
            xPos -= 10
        }
    }
