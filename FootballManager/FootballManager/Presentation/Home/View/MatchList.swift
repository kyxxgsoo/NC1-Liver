//
//  MatchList.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/13/24.
//

import SwiftUI

struct MockupData: Identifiable {
    var id: UUID = UUID()
    var imageName: String = "DefaultImage"
    var title: String = "title"
    var date: String = "2024.04.11"
}

struct MatchList: View {
    private let dataList: [MockupData] = [.init(), .init(), .init(), .init(), .init(), .init(), .init()]
    
    var body: some View {
        ScrollView {
            ForEach(dataList) { data in
                MatchListCell(data: data)
                Divider()
                
            }
        }
    }
}

#Preview {
    MatchList()
}
