//
//  MotionAnimationView.swift
//  Africa App
//
//  Created by Vito Borghi on 31/01/2024.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle = Int.random(in: 12...16)
    
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
                }
                
                Text("width: \(Int(geometry.size.width))\nHeight: \(geometry.size.height)")
            }
        }
    }
    
    func randomCoordinate(max: CGFloat) -> CGFloat {
        CGFloat.random(in: 0...max)
    }
    
    func randomSize() -> CGFloat {
        CGFloat.random(in: 10...300)
    }
    
}

#Preview {
    MotionAnimationView()
}
