//
//  SrumdingerApp.swift
//  Srumdinger
//
//  Created by Syed Waqar Uddin on 9/28/22.
//

import SwiftUI

@main
struct SrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ScrumsView(scrums: $scrums)
                }
        }
    }
}
