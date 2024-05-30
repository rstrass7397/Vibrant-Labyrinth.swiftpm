import SwiftUI

class Player: ObservableObject {
    @Published var score: Int
    
    init(score: Int = 0) {
        self.score = score
    }
}
