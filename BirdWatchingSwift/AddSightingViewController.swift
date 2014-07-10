//
//  AddSightingViewController.swift
//  BirdWatchingSwift
//
//  Created by shuichi.wada on 2014/07/15.
//  Copyright (c) 2014年 shuichi.wada. All rights reserved.
//

import UIKit

class AddSightingViewController: UITableViewController {
    
    @IBOutlet var birdNameInput: UITextField
    @IBOutlet var locationInput: UITextField
    
    var birdSighting: BirdSighting?
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        if (textField == self.birdNameInput || textField == self.locationInput) {
            textField.resignFirstResponder()
        }
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if (segue.identifier == "ReturnInput") {
            if (!self.birdNameInput.text.isEmpty || !self.locationInput.text.isEmpty) {
                self.birdSighting =  BirdSighting(name: self.birdNameInput.text, location: self.locationInput.text, date: NSDate())
            }
        }
        
    }
}
