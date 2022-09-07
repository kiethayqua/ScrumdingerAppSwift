//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Nguyen Phuc Kiet on 07/09/2022.
//

import Foundation

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
}

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: ["Garen", "Master Yi", "Zed", "Ezreal", "Darius"], lengthInMinutes: 5, theme: .purple),
    ]
}
