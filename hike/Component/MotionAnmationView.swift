//
//  MotionAnmationView.swift
//  hike
//
//  Created by Charles Michael on 8/10/24.
//

import SwiftUI

struct MotionAnmationView: View {
    
    @ State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false
    
//     functions
//    Random Coordintate
    func randomCoordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    
//    Random Size
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 4...80))
    }
//    Random Scale
    
//    Random Speed
//    Random Delay
    
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(
                        x: randomCoordinate(),
                        y: randomCoordinate()
                        )
                    .onAppear(perform: {
                        withAnimation (
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                        ) {
                            isAnimating = true
                        }
                    })
            }
           
        }
        .frame(width: 256, height: 256)
    }
}

#Preview {
    ZStack {
        Color.teal.ignoresSafeArea()
        MotionAnmationView()
    }
}
