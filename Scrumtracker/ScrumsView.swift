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
        List(scrums) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
            
            
        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
