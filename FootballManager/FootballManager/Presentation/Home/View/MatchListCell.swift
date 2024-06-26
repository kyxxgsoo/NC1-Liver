//
//  MatchListCell.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/13/24.
//

import SwiftUI

struct MatchListCell: View {
//    var imageName: String = "DefaultImage"
//    var title: String = "title"
//    var date: String = "2024.04.11"
    var data: MockupCellData
    var body: some View {
        HStack {
            ThumbnailImage(imageName: data.imageName)
                .clipShape(RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/))
            Spacer()
            Text(data.title)
            Spacer()
            Text(data.date)
        }
        .padding()
    }
}

#Preview {
    MatchListCell(data: MockupCellData())
}
