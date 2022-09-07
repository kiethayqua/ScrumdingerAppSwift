//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Nguyen Phuc Kiet on 07/09/2022.
//

// Đây là starter file cho root view

import SwiftUI

// Ctrl + click vào struct -> Refactor -> Rename
struct MeetingView: View {
    var body: some View {
        // Command + Click -> Embed in VStack
        // Stacks group views horizontally, vertically or back to front
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                // style leading giống như flex-start trong css
                VStack(alignment: .leading) {
                    // font là 1 method modifier của Text
                    // mỗi modifer return 1 new view
                    Text("Seconds Elapsed")
                        .font(.caption)
                    // image dùng SF Symbols
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                // Tạo khoảng cách theo phần còn lại
                Spacer()
                // style trailing giống như flex-end trong css
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
            // tăng trải nghiệm trợ năng
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding()
    }
}

struct Meeting_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            MeetingView()
        }
    }
}
