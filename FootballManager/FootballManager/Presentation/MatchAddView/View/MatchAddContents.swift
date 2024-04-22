//
//  MatchAddContents.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/16/24.
//

import SwiftUI

struct MatchAddContents: View {
    
    
    @Binding var match: Match
    
    
    //    var data: MockupDetailData
    //    @State var selectedHighlightTime: Date
//    @State var urlString: String = ""
//    @State var titleString: String = ""
//    @State var highlightTimeString: String = ""
//    @State var MatchDate: Date = Date()
    @State private var hour: Int = 0
    @State private var minute: Int = 0
    @State private var second: Int = 0
    
    var body: some View {
        VStack(alignment: .leading) {
//            Text("날짜")
//                .font(.title)
//            DatePicker(Date().description, selection: $match.date)
//                .padding()
//                .overlay {
//                    RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
//                        .stroke(.black, lineWidth: 2)
//                        .fill(.clear)
//                }
            
            Text("영상 링크")
                .font(.title)
            TextField("https://youtu.be/F67ICWlQs_0?t=3", text: $match.moviePath)
                .padding()
                .overlay {
                    RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                        .stroke(.black, lineWidth: 2)
                        .fill(.clear)
                }
            
            Text("제목")
                .font(.title)
            TextField("", text: $match.title)
                .padding()
                .overlay {
                    RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                        .stroke(.black, lineWidth: 2)
                        .fill(.clear)
                }
            
            
            Text("하이라이트")
                .font(.title)
            
            
            HStack(spacing: 0) {
                Spacer()
                Picker("시간", selection: $hour) {
                    ForEach(0..<24) { hour in
                        Text("\(hour)h")
                    }
                }
                
                Picker("분", selection: $minute) {
                    ForEach(0..<60) { minute in
                        Text("\(minute)m")
                    }
                }
                
                Picker("초", selection: $second) {
                    ForEach(0..<60) { second in
                        Text("\(second)s")
                    }
                }
                
                
                Button {
                    if hour != 0 || minute != 0 || second != 0 {
                        match.highlightTimes.append(String.mergeEachIntTimeToStringTime(hour: hour, minute: minute, second: second))
                    }
                    print(match.highlightTimes)
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
        
        ForEach(match.highlightTimes, id: \.self) { highlightTime in
            HStack(spacing: 0) {
                Text(highlightTime)
                Spacer()
                Button {
                    if let index = match.highlightTimes.firstIndex(of: highlightTime) {
                        match.highlightTimes.remove(at: index)
                    }
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
    }
}

#Preview {
    MatchAddContents(match: .constant(Match()))
}
