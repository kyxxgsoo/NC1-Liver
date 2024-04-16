//
//  MatchDetailWebView.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/16/24.
//

import SwiftUI
import WebKit

struct MatchDetailWebView: UIViewRepresentable {
//    @State var urlToLoad: String
    var scheme: String
    var host: String = "youtu.be"
    var moviePath: String
    var highlightTime: String
    
    //ui view 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        //unwrapping
        guard let url = URL(string: makeURL()) else {
            return WKWebView()
        }
        //웹뷰 인스턴스 생성
        let webView = WKWebView()
        
        //웹뷰를 로드한다
        webView.load(URLRequest(url: url))
        return webView
    }
    
    func makeURL() -> String {
        print("\(scheme)://\(host)\(moviePath)?t=\(highlightTime)")
        return "\(scheme)://\(host)\(moviePath)?t=\(highlightTime)"
    }
    
    
    //업데이트 ui view
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MatchDetailWebView>) {
        
    }
    
//    var body: some View {
//        Image("DefaultImage")
//            .resizable()
//            .scaledToFit()
//            .frame(width: 300)
//            .background(Color.gray)
//            .clipShape(RoundedRectangle.init(cornerRadius: 10))
//    }
}

#Preview {
    MatchDetailWebView(/*urlToLoad: <#T##String#>, */scheme: "https", moviePath: "/F67ICWlQs_0", highlightTime: "278")
}
