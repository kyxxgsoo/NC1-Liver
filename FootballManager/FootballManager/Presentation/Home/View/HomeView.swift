//
//  HomeView.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/13/24.
//

import SwiftUI

struct HomeView: View {
    @State var isPresentedAddMatchView: Bool = false
    @State var isPresentedEditMatchView: Bool = false
    var body: some View {
        VStack {
            MatchList()
            HStack {
                Spacer()
                AddMatchButton(isPresentedAddMatchView: $isPresentedAddMatchView)
            }
        }
        .navigationDestination(isPresented: $isPresentedAddMatchView) {
            MatchAddView(isPresentedView: $isPresentedAddMatchView)
        }
        .navigationDestination(isPresented: $isPresentedEditMatchView) {
            
        }
    }
}

#Preview {
    HomeView()
}
