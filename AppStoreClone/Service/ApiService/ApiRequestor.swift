//
//  ApiRequestor.swift
//  AppStoreClone
//
//  Created by Ji.finup on 2021/09/14.
//

import Foundation

struct ApiRequestor<T: Decodable> {
    typealias Completion = (Result<T?, Error>) -> Void
    
    private let api: API
    let session: URLSession
    
    init(api: API, session: URLSession = URLSession(configuration: .default)) {
        self.api = api
        self.session = session
    }
    
    func request(completion: @escaping Completion) {
        let urlRequest = api.urlRequest

        self.session.dataTask(with: urlRequest) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
            }
            guard let httpResponse = response as? HTTPURLResponse, 200..<300 ~= httpResponse.statusCode else {
                completion(.failure(APIError.httpError))
                return
            }
            guard let data = data else {
                completion(.failure(APIError.invalidData))
                return
            }
            do {
                let response = try JSONDecoder().decode(T.self, from: data)
                completion(.success(response))
            } catch let error {
                print("--> parsing error: \(error.localizedDescription)")
                completion(.failure(APIError.decodeFailed))
            }
        }
        .resume()
    }
}
