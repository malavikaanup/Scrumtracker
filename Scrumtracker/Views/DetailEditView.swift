//
//  DetailEditView.swift
//  Scrumtracker
//
//  Created by Malavika Akhilesh on 15/12/24.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum: DailyScrum = DailyScrum.emptyScrum
    @State private var newAttendeeName = ""
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                    TextField("Title", text: $scrum.title)
                HStack{
                    Slider(value: $scrum.lengthInMinutesDouble) {
                        Text("Length")
                    }
                    .accessibilityValue( "\(scrum.lengthInMinutes)")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                        .accessibilityHidden(true)
                }
                    
            }
            Section(header: Text("Attendees")){
                ForEach(scrum.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete{ indices in self.scrum.attendees.remove(atOffsets: indices)
                    
                }
                HStack {
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action: {
                        withAnimation {
                            let attendee = DailyScrum.Attendees(name: newAttendeeName)
                            scrum.attendees.append(attendee)
                            newAttendeeName = ""
                        }
                    }){
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("Add attendee")
                    }.disabled(newAttendeeName.isEmpty)
                    
                }
            }
        }
    }
}

#Preview {
    DetailEditView()
}
