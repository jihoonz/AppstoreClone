//
//  ApiResponse.swift
//  AppStoreClone
//
//  Created by Ji.finup on 2021/09/14.
//

import Foundation

struct ApiResponse<T: Decodable> {
    private let decoder = JSONDecoder()
    
    func dataParse(data: Data) -> T? {
        return try? decoder.decode(T.self, from: data)
    }
}
