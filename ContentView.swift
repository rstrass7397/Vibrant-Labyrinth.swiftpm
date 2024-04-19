import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack{
            VStack(spacing: 150){
                Text("Vibrant\nLabyrinth")
                    .frame(width: 400, height: 200)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 80))
                VStack(spacing: 70){
                    Button(action: {
                        
                    }, label: {
                        Text("Play")
                            .frame(width: 400, height: 30)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 45))
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Customize")
                            .frame(width: 400, height: 30)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 45))
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Text("How To Play")
                            .frame(width: 400, height: 30)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 45))
                            .foregroundColor(.black)
                    })
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red:255/255, green: 215/255, blue: 0/255))
    }
}
