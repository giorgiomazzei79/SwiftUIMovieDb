//
//  Movie.swift
//  SwiftUIMovieDb
//
//  Created by Giorgio Mazzei on 09/11/23.
//

import Foundation

struct MovieResponse: Decodable {
    let results: [Movie]
}

struct Movie: Decodable {
    let id: Int
    let title: String
    let backdropPath: String?
    let posterPath: String?
    let overview: String
    let voteAverage: Double
    let voteCount: Int
    let adult: Bool
    let genreIds: [Int]
    let originalLanguage: String
    let originalTitle: String
    let popularity: Double
    let releaseDate: String
    let video: Bool
}
