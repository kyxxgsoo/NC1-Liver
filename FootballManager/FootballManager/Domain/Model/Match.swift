//
//  Match.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/16/24.
//

import Foundation

struct Match: Identifiable, Codable {
    var id: UUID
//    let imageName: String
    var title: String
    var date: Date
    var highlightTimes: [String]
    var moviePath: String
}

extension Match {
    init() {
        self.id = UUID()
        self.title = ""
        self.date = Date()
        self.highlightTimes = []
        self.moviePath = ""
    }
}

//  
//
//struct MockupCellData: Identifiable {
//    var id: UUID = UUID()
//    var imageName: String = "DefaultImage"
//    var title: String = "title"
//    var date: String = "2024.04.11"
//}
//
//struct MockupDetailData: Identifiable {
//    var id: UUID = UUID()
//    var imageName: String = "DefaultImage"
//    var title: String = "title"
//    var date: String = "2024.04.11"
//    var highlightTimes: [String] = ["00:04:34", "00:08:45", "00:09:18"]
//    var moviePath: String = "F67ICWlQs_0"
//}
