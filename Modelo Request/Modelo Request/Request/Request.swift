//
//  Request.swift
//  Modelo Request
//
//  Created by Mariaelena Nascimento Silveira on 01/08/19.
//  Copyright © 2019 Mariaelena Nascimento Silveira. All rights reserved.
//

import Foundation


protocol NetworkDispatch {
    func dispatch<T: Codable>(endPoint: EndPoint, tipo: T.Type, resposta: @escaping (T?, HTTPURLResponse?, Error?) -> Void)
}

public struct Request: NetworkDispatch {
    public static let instance = Request()
    
    func dispatch<T>(endPoint: EndPoint, tipo: T.Type, resposta: @escaping (T?, HTTPURLResponse?, Error?) -> Void) where T : Decodable, T : Encodable {
        let urlRequest = endPoint.request
        print(urlRequest)
    }
}
