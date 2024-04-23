import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(destination: PlayView()) {
                    Text("Instruction")
                }
                
            }
        }
    }
}
