//
//  MatchDetailWebViewModel.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/16/24.
//

import Foundation

class MatchDetailWebViewModel: ObservableObject {
    
    func convertTimeToSecond(time: String) -> String {
        var totalSecond: Int = 0
        
        let tempArr = time.split(separator: ":")
        guard let hourSecond = Int(tempArr[0]) else {
            fatalError("houreSecond 변환 실패")
        }
        
        guard let minuteSecond = Int(tempArr[1]) else {
            fatalError("second 변환 실패")
        }
        
        guard let second = Int(tempArr[2]) else {
            fatalError("second 변환 실패")
        }
        totalSecond += hourSecond * 3600 + minuteSecond * 60 + second
        
        return String(totalSecond)
    }
}
