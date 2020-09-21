//
//  CloseButton.swift
//  CoVStats
//
//  Created by Robert Pelz on 20.09.20.
//  Copyright © 2020 Robert Pelz. All rights reserved.
//

import SwiftUI

struct CloseButton: View {
    var body: some View {
        Image(systemName: "xmark")
            .font(.system(size: 17, weight: .bold))
            .foregroundColor(.white)
            .padding(.all, 10)
            .background(Color.black.opacity(0.6))
            .mask(Circle())
    }
}

struct CloseButton_Previews: PreviewProvider {
    static var previews: some View {
        CloseButton()
    }
}
