
import Foundation
import SwiftUI

struct FirstLevel:View {
    var body: some View {
        
        VStack{
            Rectangle()
                .frame(width: 400, height: 400)
                .foregroundColor(.black)
            ControllerView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
    }
}


