//
//  AppItem.swift
//  AppStoreClone
//
//  Created by Ji.finup on 2021/09/14.
//

import Foundation

struct AppItem {
    let resultCount: Int
    let results: [SearchResult]
}

extension AppItem: Decodable {
    enum CodingKeys: String, CodingKey {
        case resultCount
        case results
    }

    init(from decoder: Decoder) throws {
        let container = try? decoder.container(keyedBy: CodingKeys.self)
        resultCount = (try? container?.decode(Int.self, forKey: .resultCount)) ?? .init()
        results = (try? container?.decode([SearchResult].self, forKey: .results)) ?? .init()
    }
}
