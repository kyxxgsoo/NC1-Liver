//
//  SplashView.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/13/24.
//

import SwiftUI

struct SplashView: View {
    @State private var isPresentedHomeView: Bool = false
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
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation(.easeInOut(duration: 1)) {
                        isPresentedHomeView = true
                    }
                }
            }
            .navigationDestination(isPresented: $isPresentedHomeView) {
                HomeView()
                    .navigationBarBackButtonHidden()
                    .navigationTitle("경기 기록")
            }
        }
    }
}

#Preview {
    SplashView()
}
