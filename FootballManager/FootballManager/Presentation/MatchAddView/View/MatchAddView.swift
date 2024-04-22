//
//  MatchAddView.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/16/24.
//

import SwiftUI

struct MatchAddView: View {
    @ObservedObject var viewModel = MatchAddViewModel()
    @Binding var isPresentedView: Bool
    
    
    
    var body: some View {
        ScrollView {
            MatchAddContents(match: $viewModel.match)
                .padding()
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    isPresentedView.toggle()
                } label: {
                    Text("저장")
                }
                .padding()
            }
        }
    }
}

#Preview {
    MatchAddView(isPresentedView: .constant(false))
}
