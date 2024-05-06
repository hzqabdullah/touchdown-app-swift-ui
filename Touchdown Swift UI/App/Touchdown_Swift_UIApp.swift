//
//  Touchdown_Swift_UIApp.swift
//  Touchdown Swift UI
//
//  Created by Haziq Abdullah on 05/05/2024.
//

import SwiftUI

@main
struct Touchdown_Swift_UIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
            
        }
    }
}
