//
//  Extension+String.swift
//  FootballManager
//
//  Created by kyungsoolee on 4/17/24.
//

import Foundation

extension String {
    
    static func mergeEachIntTimeToStringTime(hour: Int, minute: Int, second: Int) -> String {
        return String(format: "%02d:%02d:%02d", hour, minute, second)
    }
}
