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
    var scheme: String = "https"
    var host: String = "youtu.be"
    var moviePath: String
    @Binding var highlightTime: String
    
    
    @ObservedObject var viewModel = MatchDetailWebViewModel()
    
    //ui view 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        //unwrapping
        guard let url = URL(string: makeURL()) else {
            return WKWebView(frame: .zero)
        }
        //웹뷰 인스턴스 생성
        let webView = WKWebView()
        
        //웹뷰를 로드한다
        webView.load(URLRequest(url: url))
        return webView
    }
    
    func makeURL() -> String {
        var secondTime = viewModel.convertTimeToSecond(time: highlightTime)
        print("\(scheme)://\(host)\(moviePath)?t=\(secondTime)")
        return "\(scheme)://\(host)\(moviePath)?t=\(secondTime)"
    }
    
    
    //업데이트 ui view
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MatchDetailWebView>) {
        updateURLAndLoad(uiView)
    }
    
    private func updateURLAndLoad(_ webView: WKWebView) {
        if let url = URL(string: makeURL()) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
}

#Preview {
    MatchDetailWebView(/*urlToLoad: <#T##String#>, scheme: "https", */moviePath: "/F67ICWlQs_0", highlightTime: .constant("278"))
}
