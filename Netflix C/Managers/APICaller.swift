//
//  APICaller.swift
//  Netflix C
//
//  Created by Raidan Shugaa Addin on 2022. 09. 25..
//

import Foundation

struct Constants{
    static let API_KEY = "c9d741a596abb1d32aeefd4a9473bd23"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError:Error{
    case failedToGetData
}


class APICaller{
    static let shared = APICaller()
    
    
    
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void){
        guard let url = URL(string:"\(Constants.baseURL)/3/trending/movie/day?api_key=\(Constants.API_KEY)")else{return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do{
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            }catch{
                completion(.failure(error))
            }
            
           
        }
        task.resume()
    }
    
    
    
    func getTrendingTv(completion: @escaping (Result<[String], Error>) -> Void){
        guard let url = URL(string:"\(Constants.baseURL)/3/trending/tv/day?api_key=\(Constants.API_KEY)")else{return}
        
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do{
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
               print(results)
            }catch{
                print(error)
            }
            
           
        }
        task.resume()
        
        
        
    }
}
