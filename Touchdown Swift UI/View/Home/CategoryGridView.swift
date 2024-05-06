//
//  CategoryGridView.swift
//  Touchdown Swift UI
//
//  Created by Haziq Abdullah on 05/05/2024.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(
                rows: gridLayout,
                alignment: .center,
                spacing: columnSpacing,
                pinnedViews: [],
                content: {
                    Section(
                        header: SectionView(rotateClockwise: false),
                        footer: SectionView(rotateClockwise: true)
                    ) {
                        ForEach(categories) { category in
                            CategoryItemView(category: category)
                        }
                    }
                })
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        })
    }
}

#Preview {
    CategoryGridView()
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
