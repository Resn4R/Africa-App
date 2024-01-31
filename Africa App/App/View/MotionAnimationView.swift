//
//  MotionAnimationView.swift
//  Africa App
//
//  Created by Vito Borghi on 31/01/2024.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach (0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundStyle(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .position(
                            x: randomCoordinate(max: geometry.size.width),
                            y: randomCoordinate(max: geometry.size.height)
                        )
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .animation(.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                            .repeatForever(autoreverses: false)
                            .speed(randomSpeed())
                            .delay(randomDelay())
                                   , value: isAnimating
                        )
                        .onAppear {
                            isAnimating = true
                        }
                }
                
                Text("width: \(Int(geometry.size.width))\nHeight: \(geometry.size.height)")
            }
            .drawingGroup()
        }
    }
    
    func randomCoordinate(max: CGFloat) -> CGFloat {
        CGFloat.random(in: 0...max)
    }
    
    func randomSize() -> CGFloat {
        CGFloat.random(in: 10...300)
    }
    
    func randomScale() -> CGFloat {
        CGFloat.random(in: 0.1...2.0)
    }
    
    func randomSpeed() -> Double {
        Double.random(in: 0.025...1.0)
    }
    
    func randomDelay() -> Double {
        Double.random(in: 0...2)
    }
    
}

#Preview {
    MotionAnimationView()
}
