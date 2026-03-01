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
        VStack(){
            Text("Safari")
        }
        .toolbar {
                       
            ToolbarItemGroup(placement: .bottomBar) {
                Button { } label: { Image(systemName: "chevron.left") }
                Button { } label: { Image(systemName: "chevron.right") }
            }
            ToolbarSpacer(.fixed, placement: .bottomBar)

            
                            DefaultToolbarItem( kind: .search , placement: .bottomBar)
            
            ToolbarSpacer(.fixed, placement: .bottomBar)

            ToolbarItemGroup(placement: .bottomBar) {                            
                            Button { } label: { Image(systemName: "square.on.square") }
                        }
                    }
        
        .searchable(text: $searchText)
    }
}

#Preview {
    SafariToolbarExampleView()
}
