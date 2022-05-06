//
//  homeVM.swift
//  netflixClone
//
//  Created by Robert Cabrera on 5/5/22.
//

import Foundation

class HomeVM: ObservableObject {
    // string == category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({ String ($0)})
    }
    
    public func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
        func setupMovies() {
            movies["Trending Now"] = exampleMovies
            movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        }
    }

