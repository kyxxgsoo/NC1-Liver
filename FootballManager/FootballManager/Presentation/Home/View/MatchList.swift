//
//  MatchList.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/13/24.
//

import SwiftUI

struct MockupCellData: Identifiable {
    var id: UUID = UUID()
    var imageName: String = "DefaultImage"
    var title: String = "title"
    var date: String = "2024.04.11"
}

struct MockupDetailData: Identifiable {
    var id: UUID = UUID()
    var imageName: String = "DefaultImage"
    var title: String = "title"
    var date: String = "2024.04.11"
    var highlightTimes: [String] = ["00:04:34", "00:08:45", "00:09:18"]
    var moviePath: String = "F67ICWlQs_0"
}

struct MatchList: View {
    private let cellDataList: [MockupCellData] = [.init(), .init(), .init(), .init(), .init(), .init(), .init()]
    
    private let detailDataList: [MockupDetailData] = [.init(), .init(), .init(), .init(), .init(), .init(), .init()]
    
    var body: some View {
        ScrollView {
            ForEach(cellDataList.indices) { index in
                NavigationLink {
                    MatchDetailView(data: detailDataList[index])
                } label: {
                    MatchListCell(data: cellDataList[index])
                }
                Divider()
                
            }
        }
    }
}

#Preview {
    MatchList()
}
