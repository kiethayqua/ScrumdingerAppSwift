//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Nguyen Phuc Kiet on 08/09/2022.
//

import Foundation
import SwiftUI

struct ThemeView: View {
    let theme: Theme
    
    var body: some View {
        // ZStack là 1 lớp overlay from back to front
        // giống như lớp phủ background
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(theme.mainColor)
            Label(theme.name, systemImage: "paintpalette")
                .padding(4)
        }
        .foregroundColor(theme.accentColor)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(theme: .purple)
    }
}
