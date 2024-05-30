import SwiftUI

@main
struct MyApp: App {
    
    @StateObject var aspects: Aspects = Aspects(glassesAreSelected: false, eyesAreSelected: false, mustacheIsSelected: false)
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(aspects)
        }
    }
}
