//
//  CardComponent.swift
//  bankCard
//
//  Created by Paulo Mantilla on 22/02/26.
//
import SwiftUI

struct CardComponent: View {
    
    let name: String
    
    var body: some View {
        ZStack(alignment: .top){
            VStack(alignment: .center, spacing: 40){
                HStack(spacing: 50){
                    VStack(alignment: .leading, spacing: 10){
                        Text("Hello, \(name)!")
                            .font(.sora(fontStyle: .title2, fontWeight: .semibold))
                            .foregroundStyle(.white)
                        Text("Activate your new card")
                            .font(.sora(fontStyle: .body, fontWeight: .semibold))
                            .foregroundStyle(Color(hex: "1C0863"))
                    }
                    Image("memoji")
                        .resizable()
                        .frame(width: 90, height: 90)
                        .background(Color(hex: "#332169"))
                        .clipShape(
                            RoundedRectangle(cornerRadius: 20)
                        )
                    
                }
                
                VStack(alignment: .leading, spacing: 10){
                    Text("Wallet(USD)")
                        .font(.sora(fontStyle: .title3, fontWeight: .regular))
                        .foregroundStyle(.white)
                    HStack (spacing: 20){
                        HStack(alignment: .firstTextBaseline, spacing: 0){
                            Text("$8,502")
                                .font(.sora(fontStyle: .largeTitle, fontWeight: .black))
                                .foregroundStyle(.white)
                            Text(".00")
                                .font(.sora(fontStyle: .title2, fontWeight: .black))
                                .foregroundStyle(.white)
                        }
                        Text("+8.56%")
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            .font(.sora(fontStyle: .body, fontWeight: .semibold))
                            .foregroundStyle(.black)
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                        
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
                
                HStack(){
                    Button(action: { print("1") }) {
                        HStack(spacing: 8) {
                            Text("Add")
                            Image(systemName: "plus")
                        }
                        .padding(.horizontal, 30)
                        .padding(.vertical, 25)
                        .font(.sora(fontStyle: .headline, fontWeight: .semibold))
                        .foregroundStyle(.white)
                        .background(.black.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                    }
                    
                    IconButton(iconName: "arrow.up.right")
                    IconButton(iconName: "arrow.down")
                    IconButton(iconName: "wallet.bifold")
                }
                
            }
            .frame(width: 390, height: 400)
            .background(
                ZStack {
                    Color(hex: "2E1A70")
                    
                    RadialGradient(
                        stops: [
                            .init(color: Color(hex: "8BD3FC").opacity(0.8), location: 0),
                            .init(color: Color(hex: "714AFF").opacity(0.8), location: 0.5),
                            .init(color: .clear, location: 1)
                        ],
                        center: .topTrailing,
                        startRadius: 0,
                        endRadius: 1500
                    )
                    
                    Image("noiseTexture")
                        .resizable()
                        .scaledToFill()
                        .blendMode(.overlay)
                        .opacity(0.2)
                }
            )
            .clipShape(
                RoundedRectangle(cornerRadius: 60)
            )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
    }
}
