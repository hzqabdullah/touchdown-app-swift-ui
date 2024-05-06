//
//  CustomShape.swift
//  Touchdown Swift UI
//
//  Created by Haziq Abdullah on 05/05/2024.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: [.topRight, .topLeft],
            cornerRadii: CGSize(width: 35, height: 35)
        )
        
        return Path(path.cgPath)
    }
}

#Preview {
    CustomShape()
        .previewLayout(.fixed(width: 428, height: 120))
        .padding()
}
