//
//  ProductModel.swift
//  Touchdown Swift UI
//
//  Created by Haziq Abdullah on 05/05/2024.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var formattedPrice: String { return "$\(price)" }
    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[2] }
}
