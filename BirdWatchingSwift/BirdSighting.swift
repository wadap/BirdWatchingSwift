//
//  BirdSighting.swift
//  BirdWatchingSwift
//
//  Created by shuichi.wada on 2014/07/08.
//  Copyright (c) 2014年 shuichi.wada. All rights reserved.
//

import Foundation

class BirdSighting: NSObject {
    
    var name: String!
    var location: String!
    var date: NSDate!

    init(name :String!, location :String!, date :NSDate!) {
        self.name = name
        self.location = location
        self.date = date
        super.init()
    }
   
}
