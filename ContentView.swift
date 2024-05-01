import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            HStack{
                VStack(spacing: 150){
                    Text("Vibrant\nLabyrinth")
                        .frame(width: 400, height: 200)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 80))
                        .foregroundColor(.black)
                        .shadow(radius: 5)
                    VStack(spacing: 70){
                        
                        NavigationLink(destination: LevelContainerView()
                        ) {
                            Text("Play")
                                .frame(width: 150, height: 30)
                                .multilineTextAlignment(.center)
                                .font(.system(size: 45))
                                .background(RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                                    .frame(width: 150, height: 60)
                                    .foregroundColor(Color(red: 252/255, green: 176/255, blue: 1/255)))
                                .foregroundColor(.black)
                                .shadow(radius: 5)
                        }
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Customize")
                                .frame(width: 260, height: 30)
                                .multilineTextAlignment(.center)
                                .font(.system(size: 45))
                                .background(RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                                    .frame(width: 260, height: 60)
                                    .foregroundColor(Color(red: 252/255, green: 176/255, blue: 1/255)))
                                .foregroundColor(.black)
                                .shadow(radius: 5)
                        })
                        
                        
                        NavigationLink(destination: PlayView()) {
                            Text("How To Play")
                                .frame(width: 290, height: 30)
                                .multilineTextAlignment(.center)
                                .font(.system(size: 45))
                                .background(RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                                    .frame(width: 290, height: 60)
                                    .foregroundColor(Color(red: 252/255, green: 176/255, blue: 1/255)))
                                .foregroundColor(.black)
                                .shadow(radius: 5)
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red:255/255, green: 215/255, blue: 80/255))
        }
    }
}
