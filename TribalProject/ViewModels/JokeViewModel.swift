//
//  JokeViewModel.swift
//  TribalProject
//
//  Created by Américo MQ on 12/04/23.
//

import Foundation

class JokeViewModel: ObservableObject {
    @Published var jokes: Jokes = mockJoke
    @Published var manyJokes: [Jokes] = []
    
    func fetchJokes() {
        if let url = URL(string: "https://api.chucknorris.io/jokes/random") {
            URLSession.shared.dataTask(with: url) { data, response, error in
                DispatchQueue.main.async {
                    if let error = error {
                        print("Error")
                    } else {
                        if let data = data, let joke = try? JSONDecoder().decode(Jokes.self, from: data) {
                            self.jokes = joke
                            self.manyJokes.append(joke)

//                            print(self.manyJokes)
                        } else {
                            print("failed to Decode")
                        }
                    }
                }
            }.resume()
        }
    }
    
    func getJokes() {
        for i in 1...19 {
            fetchJokes()
        }
        
    }
}
