//
//  JokeView.swift
//  TribalProject
//
//  Created by Américo MQ on 12/04/23.
//

import SwiftUI

struct JokeView: View {
    let joke: Jokes
    var body: some View {
        VStack(alignment: .leading) {
            Text("**Created at:** \(joke.created_at)")
            Text("**Updated at:** \(joke.updated_at)")
            
            Text("**Joke:**")
            Text(joke.value)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color.mint.opacity(0.5), in: RoundedRectangle(cornerRadius: 15, style: .continuous))
        
    }
}

struct JokeView_Previews: PreviewProvider {
    static var previews: some View {
        JokeView(joke: Jokes(id: "123", created_at: "random date", updated_at: "ramdom date", value: "Joke"))
    }
}
