//
//  ScrumsView.swift
//  Srumdinger
//
//  Created by Syed Waqar Uddin on 9/30/22.
//

import SwiftUI

struct ScrumsView: View {
    
    @Binding var  scrums: [DailyScrum]
    var body: some View {
        List{
            ForEach($scrums){ $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)){
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
                
            }
        }
        .navigationTitle("DailyScrums")
        .toolbar{
            Button(action: {}){
                Image(systemName: "plus")
            }
            .accessibilityLabel("New Scrum")
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ScrumsView(scrums: .constant (DailyScrum.sampleData))
            
        }
    }
}
