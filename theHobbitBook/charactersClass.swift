//
//  charactersClass.swift
//  theHobbitBook
//
//  Created by Ragıb Gormez on 18.02.2023.
//

import Foundation
import UIKit

class Characters {
    var name: String
    var race: String
    var describtion: String
    var image: UIImage
    
    init(name: String, race: String, describtion: String, image: UIImage) {
        self.name = name
        self.race = race
        self.describtion = describtion
        self.image = image
    }
}
