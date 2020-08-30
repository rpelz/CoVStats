//
//  SearchBarView.swift
//  CoVStats
//
//  Created by Robert Pelz on 25.08.20.
//  Copyright © 2020 Robert Pelz. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            TextField("Country...", text: $searchText)
            .padding()
        }
        .frame(height: 50)
    .background(Color("cardBackgroundGray"))
    }
}

struct SearchView_Previews: PreviewProvider {
    @State static var searchText = ""
    
    static var previews: some View {
        
        SearchView(searchText: $searchText)
    }
}
