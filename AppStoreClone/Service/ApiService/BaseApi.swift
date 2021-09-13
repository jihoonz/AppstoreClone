//
//  BaseApi.swift
//  AppStoreClone
//
//  Created by Ji.finup on 2021/09/14.
//

import Foundation

typealias Parameters = [String : Any]

protocol API {
    var url: String { get }
    var httpMethod: HttpMethod { get }
    var parameters: Parameters? { get }
}

extension API {
    var urlRequest: URLRequest {
        var request: URLRequest = URLRequest(url: URL(string: requestURL)!)
        request.httpMethod = httpMethod.rawValue
        
        return request
    }
    
    var requestURL: String {
        let requestURL: String
        
        if httpMethod == .get && !(parameters?.isEmpty ?? false) {
            requestURL = url + "?" + parametersToQuery
        } else {
            requestURL = url
        }
        return requestURL.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
    }
    
    private var parametersToQuery: String {
        guard let parameter = parameters else {
            return ""
        }
        
        return parameter.map { "\($0.key)=\($0.value)" }
            .joined(separator: "&")
    }
}
