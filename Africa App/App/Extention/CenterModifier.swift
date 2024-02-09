//
//  CenterModifier.swift
//  Africa App
//
//  Created by Vito Borghi on 09/02/2024.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
