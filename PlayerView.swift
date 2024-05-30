import SwiftUI

class PlayerView: ObservableObject {
    @Published var player: Player
    
    init(player: Player) {
        self.player = player
    }
    func increaseScore() {
        player.score += 1
    }
    
    func decreaseScore() {
        player.score -= 1
    }
    
    
}
