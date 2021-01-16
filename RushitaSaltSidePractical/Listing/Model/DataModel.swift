//
//  DataModel.swift
//  RushitaSaltSidePractical
//
//  Created by Rushita on 13/01/21.
//  Copyright © 2021 Rushita. All rights reserved.
//

import UIKit
import SwiftyJSON

struct DataModel {
    var title : String?
    var image : String?
    var description : String?
    
   static func modelFromDictionary(array : JSON) -> [DataModel]  {
        var model : [DataModel] = []
        if let data = array.array {
            for item in data {
                model.append(DataModel(dictionary: item))
            }
        }
    return model

    }
    
    init(dictionary : JSON) {
        title = dictionary["title"].string ?? ""         
        image = dictionary["image"].string ?? ""
        description = dictionary["description"].string ?? ""
    }
    
}
