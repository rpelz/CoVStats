//
//  CountryDetailRow.swift
//  CoVStats
//
//  Created by Robert Pelz on 25.08.20.
//  Copyright © 2020 Robert Pelz. All rights reserved.
//

import SwiftUI

struct CountryDetailRow: View {
    
    var number: String = "Err"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    var body: some View {
        VStack {
            HStack {
                Text(self.name)
                    .font(.body)
                    //.foregroundColor(self.color)
                    .padding(5)
                
                Spacer()
                
                Text(self.number)
                    .font(.body)
                    .foregroundColor(self.color)
                    .padding(5)
            }
            Divider()
        }
        .padding(.leading)
        .padding(.trailing)
    }
}

struct CountryDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailRow()
    }
}
