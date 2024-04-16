//
//  MatchDetailContents.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/16/24.
//

import SwiftUI

struct MatchDetailContents: View {
    var data: MockupDetailData
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("제목")
                .font(.title)
            Text(data.title)
            .padding()
            .overlay {
                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                    .stroke(.black, lineWidth: 2)
                    .fill(.clear)
            }
            
            
            Text("하이라이트")
                .font(.title)
            
            ForEach(data.highLights, id: \.self) { highlight in
                HStack(spacing: 0) {
                    Text(highlight)
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "play.circle")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(Color.black)
                            .frame(height: 20)
                    }
                }
                .padding()
                .overlay {
                    RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                        .stroke(.black, lineWidth: 2)
                        .fill(.clear)
                }
            }
        }
    }
}

#Preview {
    MatchDetailContents(data: MockupDetailData.init())
}
