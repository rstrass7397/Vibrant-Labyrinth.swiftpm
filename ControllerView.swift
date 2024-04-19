//
//  ControllerView.swift
//  Vibrant Labyrinth
//
//  Created by River Lynch on 4/19/24.
//

import SwiftUI

struct ControllerView: View {
    var body: some View {
        VStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "arrowshape.up.fill")
                    .font(.largeTitle)
            })
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "arrowshape.left.fill")
                        .font(.largeTitle)
                })
                
                    Image(systemName: "pencil.tip")
                        .font(.title)
                        .opacity(0)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "arrowshape.right.fill")
                        .font(.largeTitle)
                })
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "arrowshape.down.fill")
                    .font(.largeTitle)
            })
        }
    }
}
