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
                        .frame(width: 256, height: 256, alignment: .center)
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
    
}

#Preview {
    MotionAnimationView()
}
