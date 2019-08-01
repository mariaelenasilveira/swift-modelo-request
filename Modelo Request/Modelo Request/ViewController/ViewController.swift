//
//  ViewController.swift
//  Modelo Request
//
//  Created by Mariaelena Nascimento Silveira on 01/08/19.
//  Copyright © 2019 Mariaelena Nascimento Silveira. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let endPoint = Servicos.instituicao(token: "kjaskjask")
        print(endPoint.request)
        let request = Request.instance
        request.dispatch(endPoint: Servicos.instituicao(token: "umacoisaai"), tipo: String.self, resposta: {(dado, response, Error) in })
    }
}
