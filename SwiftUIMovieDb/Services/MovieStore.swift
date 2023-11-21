//
//  MovieStore.swift
//  SwiftUIMovieDb
//
//  Created by Giorgio Mazzei on 17/11/23.
//

import Foundation

class MovieStore: MovieService {
    func fetchMovies(from endpoint: MovieListEndpoint, completion: @escaping (Result<MovieResponse, MovieError>) -> ()) {
        
    }
    
    func fetchMovie(id: Int, completion: @escaping (Result<Movie, MovieError>) -> ()) {
        
    }
    
    func searchMovie(query: String, completion: @escaping (Result<MovieResponse, MovieError>) -> ()) {
        
    }
    
    static let shared = MovieStore()
    private init(){}
    
    private let apiKey = "APIKEY"
    private let baseAPIURL = "https://api.themoviedb.org/3"
    private let urlSession = URLSession.shared
    private let jsonDecoder = Utils.jsonDecoder
    
    private func loadURLAndDecode<D: Decodable>(url: URL, params:[String: String]? = nil, completion: @escaping(Result<D, MovieError>) -> ()){
        guard var urlComponents = URLComponents(url:url, resolvingAgainstBaseURL: false) else {
            completion(.failure(.invalidEndpoint))
            return
        }
    }
    
    
}
