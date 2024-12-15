//
//  ScrumsView.swift
//  Scrumtracker
//
//  Created by Malavika Akhilesh on 13/12/24.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)){
                    CardView(scrum: scrum)
                }.listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button {
                
            } label: {
                Image(systemName: "plus")
            }
            .accessibilityLabel("New Scrum")

        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
