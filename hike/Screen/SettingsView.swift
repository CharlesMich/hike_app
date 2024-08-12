//
//  SettingsView.swift
//  hike
//
//  Created by Charles Michael on 8/11/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        Text("Settings View")
        List {
//            SECTION HEADER
            Section{
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack (spacing: -10) {
                        Text("Hike")
                            .font(.system(size:66, weight: .black))
                        Text("Editors Choice")
                    }
                    .fontWeight(.medium)
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [
                        .customGreenLight,
                        .customGreenMedium,
                        .customGreenDark
                    ], startPoint: .top, endPoint: .bottom
                    )
                )
                .padding(.top, 8)
                VStack (spacing: 8){
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! Its time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            } //: HEADER
            .listRowSeparator(.hidden)
            
//            SECTION: ICONS
    
//            SECTION: ABOUT
           Section(
            header: Text("About the App"),
            footer: HStack {
                Spacer()
                Text("Copyright@ All rights reserved")
            }
                .padding(.vertical, 8)
           ) {
//              basic Labeled Content
//               LabeledContent("Application", value: "Hike")
//               advanced label content
               CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
               
               CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "HIKE", rowTintColor: .red)
               
               CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "HIKE", rowTintColor: .orange)
               
               CustomListRowView(rowLabel: "Version", rowIcon: "ellipses.curlybraces", rowContent: "HIKE", rowTintColor: .blue)
     
           }
           
            
            
        }
    }
}

#Preview {
    SettingsView()
}
