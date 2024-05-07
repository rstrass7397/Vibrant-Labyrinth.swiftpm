
import SwiftUI

struct ControllerView: View {
    @State var timer: Timer?
    @State var xPos: CGFloat = 200
    @State var yPos: CGFloat = 300
    //Color for level is the same as the color of the arrows, change colors for each level
    @State var levelR: Double = 255.0
    @State var levelG: Double = 204.0
    @State var levelB: Double = 0.0
    var body: some View {
        VStack {
            Button(action:{
                yPos -= 20
            }, label: {
                Image(systemName: "arrowshape.up.fill")
                    .font(.largeTitle)
                    .onTapGesture {
                        upAction()
                    }
                    .gesture(
                        LongPressGesture()
                            .onEnded { _ in
                                timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                                    upAction()
                                }
                            }
                            .sequenced(before:
                                        DragGesture(minimumDistance: 0)
                                .onEnded { _ in
                                    timer?.invalidate()
                                    timer = nil
                                }
                                      )
                    )
            })
            
            
            HStack {
                Button(action: {
                    xPos -= 20
                }, label: {
                    Image(systemName: "arrowshape.left.fill")
                        .font(.largeTitle)
                        .onTapGesture {
                            leftAction()
                        }
                        .gesture(
                            LongPressGesture()
                                .onEnded { _ in
                                    timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                                        leftAction()
                                    }
                                }
                                .sequenced(before:
                                            DragGesture(minimumDistance: 0)
                                    .onEnded { _ in
                                        timer?.invalidate()
                                        timer = nil
                                    }
                                          )
                        )
                })
                
                Image(systemName: "pencil.tip")
                    .font(.title)
                    .opacity(0)
                
                Button(action: {
                    xPos += 20
                }, label: {
                    Image(systemName: "arrowshape.right.fill")
                        .font(.largeTitle)
                        .onTapGesture {
                            rightAction()
                        }
                        .gesture(
                            LongPressGesture()
                                .onEnded { _ in
                                    timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                                        rightAction()
                                    }
                                }
                                .sequenced(before:
                                            DragGesture(minimumDistance: 0)
                                    .onEnded { _ in
                                        timer?.invalidate()
                                        timer = nil
                                    }
                                          )
                        )
                })
            }
            Button(action: {
                yPos += 20
            }, label: {
                Image(systemName: "arrowshape.down.fill")
                    .font(.largeTitle)
                    .onTapGesture {
                        downAction()
                    }
                    .gesture(
                        LongPressGesture()
                            .onEnded { _ in
                                timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                                    downAction()
                                }
                            }
                            .sequenced(before:
                                        DragGesture(minimumDistance: 0)
                                .onEnded { _ in
                                    timer?.invalidate()
                                    timer = nil
                                }
                                      )
                    )
            })
        }
        .frame(width: 400, height: 180)
        .foregroundStyle(Color(red: levelR/255, green: levelG/255, blue: levelB/255))
    }
    func leftAction() {
        xPos -= 20
    }
    func rightAction() {
        xPos += 20
    }
    func upAction() {
        yPos -= 20
    }
    func downAction() {
        yPos += 20
    }
}


