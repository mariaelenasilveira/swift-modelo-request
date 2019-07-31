//
//  Servicos.swift
//  Modelo Request
//
//  Created by Mariaelena Nascimento Silveira on 31/07/19.
//  Copyright © 2019 Mariaelena Nascimento Silveira. All rights reserved.
//

import Foundation

enum Servicos {
    case token
    case instituicao(token: String)
}

extension Servicos: EndPoint {
    var scheme: String {
        return "https"
    }
    
    var host: String {
        switch self {
        case .token:
            return "//"
        default:
            return "//"
        }
    }
    
    var path: String {
        switch self {
        case .token:
            return "//"
        case .instituicao:
            return "//"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .token:
            return .post
        default:
            return .get
        }
    }
    
    var query: [String : String]? {
        switch self {
        case .token:
            return ["//":"//"]
        case .instituicao(let _):
            return ["apps":"//"]
        default:
            return nil
        }
    }
    
    var headers: [String : String] {
        switch self {
        case .instituicao(let token):
            return ["x-api-key":"//","Authorization": token]
        default:
            return [:]
        }
        
    }
    
    var body: [String : Any] {
        return [:]
    }
    
    
}
