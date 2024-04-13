//
//  SplashView.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/13/24.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image("FootballManagerIcon")
                    .resizable()
                    .scaledToFit()
                    .padding(EdgeInsets(top: 0, leading: 100, bottom: 0, trailing: 100))
                Text("Football Manager")
                    .font(.title)
            }
        }
    }
}

#Preview {
    SplashView()
}
