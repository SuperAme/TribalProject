//
//  ContentView.swift
//  TribalProject
//
//  Created by Américo MQ on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = JokeViewModel()
    @StateObject private var saveListVM = SaveListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.manyJokes, id: \.id) { joke in
                    JokeView(joke: joke)
                }
            }
            .navigationTitle("Jokes")
            .onAppear {
                vm.fetchJokes()
                vm.getJokes()
//                saveListVM.saveJokes()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
