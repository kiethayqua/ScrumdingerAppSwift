//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Nguyen Phuc Kiet on 08/09/2022.
//

import Foundation
import SwiftUI

struct ThemePicker: View {
    @Binding var selection: Theme
    
    var body: some View {
        Picker("Theme", selection: $selection) {
            // vì Theme conform CaseIterable
            // nên có thể dùng method allCases
            ForEach(Theme.allCases) { theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        // ThemePicker yêu cầu khởi tạo với binding
        // Nếu khởi tạo cách thông thường sẽ xảy ra lỗi
        // dùng constant method để tạo 1 binding hardcode
        // cách này dùng khi preview hoặc khi prototype UI
        ThemePicker(selection: .constant(.purple))
    }
}
