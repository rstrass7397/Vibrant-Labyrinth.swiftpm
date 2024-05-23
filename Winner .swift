import SwiftUI

func checkWinner(list: [String], letter: String) -> Bool {
    let winningSequence = [ [Rectangle()
        .frame(width: 100, height: 100)
        .foregroundStyle(.red)
        .offset(x: -150, y: 150)]
                            
    ]
    for sequence in winningSequence {
        var score = 0
        
        
        for match in sequence {
            if list[match as! Int] == letter {
                score += 1
                
                
                if score == 3 {
                    return true
                }
            }
        }
    }
    return false
    
}
