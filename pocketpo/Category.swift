//
//  Category.swift
//  pocketpo
//
//  Created by OBFK on 11/19/14.
//  Copyright (c) 2014 com.obesity. All rights reserved.
//

import Foundation

struct Category {

    var id: Int
    var name: String

    init(categoryDictionary: NSDictionary) {
        id = categoryDictionary["id"] as Int
        name = categoryDictionary["name"] as String
    }
}