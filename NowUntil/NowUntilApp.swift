//
//  NowUntilApp.swift
//  NowUntil
//
//  Created by Matthew Sousa on 11/17/21.
//

import SwiftUI

@main
struct NowUntilApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
