//
//  SearchApi.swift
//  AppStoreClone
//
//  Created by Ji.finup on 2021/09/14.
//

import Foundation

struct SearchApi: API {
    var searchParams: ApiURI
    
    init(word: String) {
        searchParams = ApiURI.search(term: word,
                                     country: SearchCountry.kr.rawValue,
                                     media: SearchMedia.software.rawValue)
    }
    
    var url: String {
        return ApiURI.baseUrl + searchParams.path
    }
    var httpMethod: HttpMethod {
        return .get
    }
    var parameters: Parameters? {
        return searchParams.parameters
    }
}
