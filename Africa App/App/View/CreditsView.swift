//
//  CreditsView.swift
//  Africa App
//
//  Created by Vito Borghi on 09/02/2024.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
            
            Text("""
            Copyright © Vito Borghi
            All rights reserved
            Better Apps ♡ Less Code
            """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
}

#Preview {
    CreditsView()
}
