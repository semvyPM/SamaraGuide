//
//  Item.swift
//  SamaraGuide
//
//  Created by Victoria Semenycheva on 05.04.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
