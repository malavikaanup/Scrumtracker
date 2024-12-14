//
//  ScrumtrackerApp.swift
//  Scrumtracker
//
//  Created by Malavika Akhilesh on 13/12/24.
//

import SwiftUI

@main
struct ScrumtrackerApp: App {
    var body: some Scene {
        WindowGroup {
//            MeetingView()
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
