//
//  SafariExampleView.swift
//  CustomeToolbar26
//
//  Created by Tanmaydeep singh on 05/03/26.
//

import SwiftUI

struct SafariToolbarExampleView: View {
    
    @State private var selectedTab: Int = 0
    @State private var searchText: String = ""
    
    var body: some View {
        TabView {
            Tab("Requests", systemImage: "paperplane") {
            }


            Tab("Account", systemImage: "person.crop.circle.fill") {
            }


            TabSection("Messages") {
                Tab("Received", systemImage: "tray.and.arrow.down.fill") {
                }


                Tab("Sent", systemImage: "tray.and.arrow.up.fill") {
                }


                Tab("Drafts", systemImage: "pencil") {
                }
            }
        }
        .tabViewStyle(.sidebarAdaptable)
        .tabBarMinimizeBehavior(.onScrollDown)
    }
}

#Preview {
    SafariToolbarExampleView()
}
