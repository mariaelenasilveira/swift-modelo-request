//
//  EndPoint.swift
//  Modelo Request
//
//  Created by Mariaelena Nascimento Silveira on 01/08/19.
//  Copyright © 2019 Mariaelena Nascimento Silveira. All rights reserved.
//

import Foundation

protocol EndPoint {
    var scheme: String            { get }
    var host: String              { get }
    var path: String              { get }
    var method: HTTPMethod        { get }
    var query: [String:String]?    { get }
    var headers: [String:String]  { get }
    var body: [String:Any]        { get }
}

extension EndPoint {
    
    private var urlComponents: URLComponents {
        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = path
        components.queryItems = query?.map {
            URLQueryItem(name: $0, value: $1)
        }
        return components
    }
    
    var request: URLRequest? {
        guard let url = urlComponents.url else { return nil }
        return URLRequest(url: url)
    }
}
