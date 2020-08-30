//
//  ContentView.swift
//  CoVStats
//
//  Created by Robert Pelz on 22.08.20.
//  Copyright © 2020 Robert Pelz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            RecentView()
                .tabItem {
                   Tab(imageName: "chart.bar", text: "Recent")
            }
            .tag(0)
            
            MapContainerView()
                .edgesIgnoringSafeArea(.vertical)
                .tabItem {
                   Tab(imageName: "map", text: "Map")
            }
            .tag(1)
        }
    }
}

private struct Tab: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
            Text(text)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
