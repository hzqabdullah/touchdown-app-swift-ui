//
//  TopPartDetailView.swift
//  Touchdown Swift UI
//
//  Created by Haziq Abdullah on 05/05/2024.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - PROPERTY
    
    @EnvironmentObject var shop: Shop
    @State var isAnimating: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        })
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

#Preview {
    TopPartDetailView()
        .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
}
