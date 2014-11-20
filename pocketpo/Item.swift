//
//  Item.swift
//  pocketpo
//
//  Created by OBFK on 11/19/14.
//  Copyright (c) 2014 com.obesity. All rights reserved.
//

import Foundation

struct Item{
    
    var id: Int
    var title: String
    var description: String
    var imageURL: String
    
    init() {
        id = 0
        title = "default title"
        description = "default description"
        imageURL = "http://this.is.the.default.image.com"
    }
}