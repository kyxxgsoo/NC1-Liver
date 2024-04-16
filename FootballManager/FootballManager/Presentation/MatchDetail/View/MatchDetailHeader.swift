//
//  MatchDetailHeader.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/16/24.
//

import SwiftUI

struct MatchDetailHeader: View {
    var date: String
    var body: some View {
        HStack {
            Text(date)
                .font(.title)
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "square.and.pencil.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 30)
                    .foregroundStyle(Color.black)
                    .padding(6)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle.init(cornerRadius: 10))
            }
        }
    }
}

#Preview {
    MatchDetailHeader(date: "2024.04.11")
}
