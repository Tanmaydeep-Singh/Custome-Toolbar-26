//
//  GalleryAppView.swift
//  CustomeToolbar26
//
//  Created by Tanmaydeep singh on 05/03/26.
//

import SwiftUI

struct GalleryAppView: View {
    
    @State private var selectedTab: Int = 0
    @State private var searchText: String = ""
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            Tab("Library", systemImage: "photo.on.rectangle", value: 0) {
                LibraryGridView()
            }
            
            TabSection("Collections") {
                Tab("Albums", systemImage: "rectangle.stack", value: 1) {
                    Text("Your Albums Content")
                }
                Tab("People", systemImage: "person.2", value: 2) {
                    Text("People & Pets Content")
                }
            }
            
            
            Tab("Search", systemImage: "magnifyingglass", value: 3, role: .search) {
                SearchContainerView(text: $searchText)
            }
        }
        .tabViewStyle(.sidebarAdaptable)
        .tabBarMinimizeBehavior(.onScrollDown)
    }
}

// MARK: - Library Content
struct LibraryGridView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 2) {
                    ForEach(1...100, id: \.self) { index in
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .aspectRatio(1, contentMode: .fill)
                            .overlay(Text("\(index)").font(.caption2))
                    }
                }
                .padding(.horizontal, 1)
            }
            .navigationTitle("Library")
        }
    }
}

// MARK: - Search Content
struct SearchContainerView: View {
    @Binding var text: String
    
    var body: some View {
        NavigationStack {
            List {
                Section("Recent") {
                    Text("Last Summer")
                    Text("Trips to Mountains")
                }
                Section("Categories") {
                    Label("Videos", systemImage: "video")
                    Label("Favorites", systemImage: "heart")
                }
            }
            .navigationTitle("Search")
            .searchable(text: $text, placement: .navigationBarDrawer(displayMode: .always))
        }
    }
}


#Preview {
    GalleryAppView()
}
