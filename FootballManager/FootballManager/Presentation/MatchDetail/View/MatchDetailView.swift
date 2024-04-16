//
//  MatchDetailView.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/15/24.
//

import SwiftUI

struct MatchDetailView: View {
    var data: MockupDetailData
    var body: some View {
        VStack {
            VStack {
                
                MatchDetailHeader(date: data.date)
                
                MatchDetailWebView(scheme: "https", moviePath: "/F67ICWlQs_0", highlightTime: "278")
                
                MatchDetailContents(data: data)
            }
            .padding()
        }
    }
}

#Preview {
    MatchDetailView(data: MockupDetailData.init())
}
