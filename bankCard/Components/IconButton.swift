//
//  IconButton.swift
//  bankCard
//
//  Created by Paulo Mantilla on 22/02/26.
//
import SwiftUI

struct IconButton: View {
    let iconName: String
    
    var body: some View {
        Button(action: {
            print("")
        }){
            Label("Send", systemImage: iconName)
                .padding(.all, 20)
                .font(.system(size: 25, weight: .semibold))
                .foregroundStyle(.white)
                .background(.black.opacity(0.2))
                .clipShape(
                    RoundedRectangle(cornerRadius: 50)
                )
        }
        .labelStyle(.iconOnly)
    }
}


