//
//  MatchEditContents.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/16/24.
//

import SwiftUI

struct MatchEditContents: View {
    
    var data: MockupDetailData
    @State var selectedHighlightTime: Date
    @State var urlString: String = ""
    @State var titleString: String = ""
    @State var highlightTimeString: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("영상 링크")
                .font(.title)
            TextField("https://youtu.be/F67ICWlQs_0?t=3", text: $urlString)
            .padding()
            .overlay {
                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                    .stroke(.black, lineWidth: 2)
                    .fill(.clear)
            }
            
            Text("제목")
                .font(.title)
            TextField("", text: $titleString)
            .padding()
            .overlay {
                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                    .stroke(.black, lineWidth: 2)
                    .fill(.clear)
            }
            
            
            Text("하이라이트")
                .font(.title)
            
            ForEach(data.highlightTimes, id: \.self) { highlightTime in
                HStack(spacing: 0) {
                    Text(highlightTime)
                    Spacer()
                    Button {
//                        selectedHighlightTime = highlightTime
//                        print(selectedHighlightTime)
                    } label: {
                        Image(systemName: "minus.circle")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(Color.red)
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
            
                HStack(spacing: 0) {
                    Spacer()
                    
                    TextField("00:00:00", text: $highlightTimeString)
                    Button {
//                        selectedHighlightTime = highlightTime
//                        print(selectedHighlightTime)
                    } label: {
                        Image(systemName: "plus.circle")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(Color.green)
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
        .onAppear {
            titleString = data.title
        }
    }
}

#Preview {
    MatchEditContents(data: MockupDetailData.init(), selectedHighlightTime: Date())
}
