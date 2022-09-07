//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Nguyen Phuc Kiet on 07/09/2022.
//

import Foundation
import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        
        List {
            // ForEach view
            // Để tạo nhiều views
            // sẽ phải truyền danh sách khởi tạo các items -> scrums
            // và cùng với closure để tạo view cho từng item
            // ForEach cần định danh riêng biệt những item trong danh sách
            ForEach(scrums) { scrum in
                // đây là cú pháp rút gọn của closure -> return CardView
                CardView(scrum: scrum)
                    .listRowBackground(scrum.theme.mainColor)
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
