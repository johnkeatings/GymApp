//
//  Workout.swift
//  GymApp (iOS)
//
//  Created by Chris Campanelli on 2021-12-13.
//

import Foundation

// Custom class
class Workout: NSObject, NSCoding {    
    var id: UUID!
    var name: String!
    required convenience init(coder decoder: NSCoder) {
        self.init()
        self.id = decoder.decodeObject(forKey: "id") as? UUID
        self.name = decoder.decodeObject(forKey: "name") as? String
    }
    convenience init(name: String, uuid: UUID) {
        self.init()
        self.name = name
        self.id = uuid
    }
    func encode(with coder: NSCoder) {
        if let name = name { coder.encode(name, forKey: "name") }
        if let id = id { coder.encode(id, forKey: "id") }

    }
}
