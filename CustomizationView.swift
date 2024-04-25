//
//  CustomizationView.swift
//  Vibrant Labyrinth
//
//  Created by Jade River Mica Lynch on 4/25/24.
//

import SwiftUI

struct CustomizationView: View {
    
    //When a customization option is selected, the button turns green.
    @State var mustacheIsSelected: Bool = false
    @State var monocleIsSelected: Bool = false
    @State var eyesAreSelected: Bool = false
    
    var body: some View {
        ZStack {
            //Background
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundStyle(.pink)
            
            VStack {
                Text("Customization")
                    .font(.largeTitle)
                    .underline()
                    .shadow(radius: 5)
                    .foregroundStyle(.white)
                
                //Each button has a picture of a different option on them
                HStack {
                    Button(action: {
                        if mustacheIsSelected == false {
                            mustacheIsSelected = true
                        } else {
                            mustacheIsSelected = false
                        }
                    }, label: {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 100, height: 100)
                        .foregroundStyle((mustacheIsSelected ? .green : .white))
                })
                    Button(action: {
                        if monocleIsSelected == false {
                            monocleIsSelected = true
                        } else {
                            monocleIsSelected = false
                        }
                    }, label: {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 100, height: 100)
                            .foregroundStyle((monocleIsSelected ? .green : .white))
                    })
                    Button(action: {
                        if eyesAreSelected == false {
                            eyesAreSelected = true
                        } else {
                            eyesAreSelected = false
                        }
                    }, label: {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 100, height: 100)
                            .foregroundStyle((eyesAreSelected ? .green : .white))
                    })}
                Divider()
                    .frame(height: 25)
                
                //To view your full customization
                Rectangle()
                    .frame(width: 150, height: 150)
                
                //Brings the user back to the main menu
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Let's Go!")
                        .frame(width: 100, height: 40)
                        .foregroundStyle(.white)
                        .background(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                })
            }
            .shadow(radius: 5)
        }
    }
}


