//
//  BirdSightingDataController.swift
//  BirdWatchingSwift
//
//  Created by shuichi.wada on 2014/07/08.
//  Copyright (c) 2014年 shuichi.wada. All rights reserved.
//

import Foundation


class BirdSightingDataController: NSObject {
    
    
    var masterBirdSightingList: Array<BirdSighting> = Array<BirdSighting>()
    
    init() {
        super.init()
        initializeDefaultDataList()
    }
    
    func initializeDefaultDataList() -> Void {
        var sighting: BirdSighting
        var today: NSDate = NSDate()
        
        sighting = BirdSighting(name: "tori", location: "shibuya", date: today)
        addBirdSightingWithSighting(sighting)
    }

    func countOfList() -> Int {
        return self.masterBirdSightingList.count
    }
    
    func objectInListAtIndex(theIndex: Int) -> BirdSighting {
        return self.masterBirdSightingList[theIndex]
    }
    
    func addBirdSightingWithSighting(sighting: BirdSighting) {
        self.masterBirdSightingList += sighting
    }
   
}
