//
//  ApiError.swift
//  AppStoreClone
//
//  Created by Ji.finup on 2021/09/14.
//

import Foundation

enum APIError: Error {
    case httpError
    case invalidURL
    case invalidData
    case decodeFailed
}
