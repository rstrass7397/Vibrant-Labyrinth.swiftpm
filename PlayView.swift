//
//  PlayView.swift
//  Vibrant Labyrinth
//
//  Created by Sia Ryu on 4/23/24.
//

import SwiftUI

struct PlayView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        VStack(spacing: 50){
            Text("How to Play")
                .frame(width: 400, height: 200)
                .multilineTextAlignment(.center)
                .font(.system(size: 70))
                .foregroundColor(.black)
                .shadow(radius: 5)
            Divider()
                .frame(width: 400, height: 3)
                .background(.black)
            HStack{
                Text("Use the arrow buttons to move")
                    .frame(width: 175, height: 100)
                    .font(.system(size: 25))
                VStack{
                    Image(systemName: "arrowshape.up.fill")
                        .font(.largeTitle)
                    HStack{
                        Image(systemName: "arrowshape.left.fill")
                            .font(.largeTitle)
                        Image(systemName: "arrowshape.left.fill")
                            .font(.largeTitle)
                            .opacity(0.0)
                        Image(systemName: "arrowshape.right.fill")
                            .font(.largeTitle)
                    }
                    Image(systemName: "arrowshape.down.fill")
                        .font(.largeTitle)
                }
            }
            Divider()
                .frame(width: 400, height: 3)
                .background(.black)
            HStack{
                Text("This red box is the exit")
                    .frame(width: 175, height: 200)
                    .font(.system(size: 30))
                Rectangle()
                    .frame(width: 150, height: 100)
                    .foregroundColor(Color(red: 159/255,green: 0/255, blue: 0/255))
            }
        }
        .frame(width: 400, height: 1000)
        .background(.orange)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button{
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.black)
                        Text("Back")
                            .foregroundColor(.black)
                    }
                }
            }
            
        }
    }
}
