//
//  NetworkManager.swift
//  RushitaSaltSidePractical
//
//  Created by Rushita on 13/01/21.
//  Copyright © 2021 Rushita. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class NetworkManager: NSObject {
    
    static func getRequestFromServer(success :@escaping ([DataModel]) -> Void) {
        let todosEndpoint: String = "https://gist.githubusercontent.com/ashwini9241/6e0f26312ddc1e502e9d280806eed8bc/raw/7fab0cf3177f17ec4acd6a2092fc7c0f6bba9e1f/saltside-json-data"
        DispatchQueue.main.async {
            showLoaderView()
        }
        
        AF.request(URL(string: todosEndpoint)!, method: .get, encoding: JSONEncoding.default)
            .responseJSON { response in

                DispatchQueue.main.async {
                    hideLoader()
                }
                switch response.result {

                case .success(let json):
                    print("Response - \(json)")
                    let responseJson = JSON(response.value as Any)
                    let modelData = DataModel.modelFromDictionary(array: responseJson)
                    success(modelData)
                case .failure(let error):
                    print(error)
                }
        }
    }
}
