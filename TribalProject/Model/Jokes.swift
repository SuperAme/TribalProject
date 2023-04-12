//
//  Jokes.swift
//  TribalProject
//
//  Created by Américo MQ on 12/04/23.
//

import Foundation

struct Jokes: Codable, Identifiable {
    let id: String
    let created_at: String
    let updated_at: String
    let value: String
}

let mockJoke: Jokes =
    Jokes(id: "0", created_at: "mock date", updated_at: "mock date", value: "joke")
