//
//  Student.swift
//  SwiftDataPlayground
//
//  Created by Henrieke Baunack on 12/12/23.
//

import Foundation
import SwiftData

@Model // Swift Data Model, uses the observation system from @Observable
class Student {
    var id: UUID
    var name: String
    
    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}
