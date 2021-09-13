//
//  ApiURI.swift
//  AppStoreClone
//
//  Created by Ji.finup on 2021/09/14.
//

import Foundation

enum ApiURI {
    static let baseUrl: String = "https://itunes.apple.com"
    
    case search(term: String, country: String, media: String)
    
    var path: String {
        switch self {
        case .search:
            return "/search"
        }
    }
    
    var parameters: Parameters? {
        switch self {
        case .search(let term, let country, let media):
        return ["term":term,
                "country":country,
                "media":media
            ]
        }
    }
}
