//
//  MatchDetailView.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/15/24.
//

import SwiftUI

struct MatchDetailView: View {
    var data: MockupDetailData
    @State var selectedHighlightTime: String = "00:00:00"
    
    var body: some View {
        ScrollView {
            LazyVStack {
                
                MatchDetailHeader(date: data.date)
                
                MatchDetailWebView(moviePath: "/F67ICWlQs_0", highlightTime: $selectedHighlightTime)
                    .frame(height: 300)
                
                MatchDetailContents(data: data, selectedHighlightTime: $selectedHighlightTime)
            }
            .padding()
        }
    }
}

#Preview {
    MatchDetailView(data: MockupDetailData.init())
}
