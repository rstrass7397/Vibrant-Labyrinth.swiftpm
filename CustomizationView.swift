//
//  CustomizationView.swift
//  Vibrant Labyrinth
//
//  Created by Jade River Mica Lynch on 4/25/24.
//

import SwiftUI

struct CustomizationView: View {
    
    //When a customization option is selected, the button turns green.
    @EnvironmentObject var customizations: Aspects
    
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
                            customizations.mustacheIsSelected.toggle()
                        }, label: {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 100, height: 100)
                                .foregroundStyle((customizations.mustacheIsSelected ? .green : .white))
                                .overlay(Image("Mustache")
                                    .resizable()
                                    .frame(width: 95, height: 30))
                        })
                        
                    
                    
                        Button(action: {
                            customizations.glassesAreSelected.toggle()
                        }, label: {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 100, height: 100)
                                .foregroundStyle((customizations.glassesAreSelected ? .green : .white))
                                .overlay(Image("Glasses")
                                    .resizable()
                                    .frame(width: 95, height: 35))
                        })
                        
                    
                    
                        Button(action: {
                            customizations.eyesAreSelected.toggle()
                        }, label: {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 100, height: 100)
                                .foregroundStyle((customizations.eyesAreSelected ? .green : .white))
                                .overlay {
                                    Image("Eyes")
                                        .resizable()
                                        .frame(width: 95, height: 95)
                                }
                        })
                        
                    
                }
                Divider()
                    .frame(height: 25)
                
                //To view your full customization
                ZStack {
                    Rectangle()
                        .frame(width: 150, height: 150)
                        .foregroundStyle(.white)
                    Image("Eyes")
                        .resizable()
                        .frame(width: 140, height: 140)
                        .offset(y: -15)
                        .opacity((customizations.eyesAreSelected ? 1 : 0))
                    Image("Glasses")
                        .resizable()
                        .frame(width: 150, height: 55)
                        .offset(y: -15)
                        .opacity((customizations.glassesAreSelected ? 1 : 0))
                    Image("Mustache")
                        .resizable()
                        .frame(width: 130, height: 40)
                        .offset(y: 25)
                        .opacity((customizations.mustacheIsSelected ? 1 : 0))
                }
                //Brings the user back to the main menu
//                Button(action: {}, label: {
//                    Text("Let's Go!")
//                        .frame(width: 100, height: 40)
//                        .foregroundStyle(.white)
//                        .background(.green)
//                        .clipShape(RoundedRectangle(cornerRadius: 15))
//                })
            }
            .shadow(radius: 5)
        }
    }
}
