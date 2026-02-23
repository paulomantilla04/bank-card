//
//  ContentView.swift
//  bankCard
//
//  Created by Paulo Mantilla on 22/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 70){
            HStack(spacing: 60){
                VStack(alignment: .leading, spacing: 10){
                    Text("Hello, James!")
                        .font(.system(size: 27, weight: .bold))
                        .foregroundStyle(.white)
                    Text("Account Details")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundStyle(Color(hex: "210878"))
                }
                Image(systemName: "face.smiling.inverse")
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
                    .frame(width: 75, height: 75)
                    .background(Color(hex: "3510B5"))
                    .clipShape(
                        RoundedRectangle(cornerRadius: 20)
                    )
                
            }
            
            VStack(){
                Text("Hola")
                    .foregroundStyle(.white)
            }
            .frame(width: 300, height: 50)
            .background(.black)
            VStack(){
                Text("Hola")
                    .foregroundStyle(.white)
            }
            .frame(width: 300, height: 50)
            .background(.black)
        }
        .frame(width: 380, height: 400)
        .background(
            RadialGradient(
                stops: [
                    .init(color: Color(hex: "714AFF"), location: 0),
                    .init(color: Color(hex: "4A7DFF"), location: 1)
                ],
                center: .topTrailing,
                startRadius: 0,
                endRadius: 400
            )
        )
        .clipShape(
            RoundedRectangle(cornerRadius: 30)
        )
    }
}

#Preview {
    ContentView()
}
