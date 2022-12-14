//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Nguyen Phuc Kiet on 07/09/2022.
//

// Đây là file entry point của app

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            // nhúng NavigationView
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
