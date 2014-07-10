//
//  DetailViewController.swift
//  BirdWatchingSwift
//
//  Created by shuichi.wada on 2014/07/08.
//  Copyright (c) 2014年 shuichi.wada. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    @IBOutlet var detailDescriptionLabel: UILabel
    
    var sighting: BirdSighting?
    
    @IBOutlet var birdNameLabel: UILabel
    @IBOutlet var locationLabel: UILabel
    @IBOutlet var dateLabel: UILabel

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        
        var theSighting:BirdSighting? = self.sighting
        let formatter: NSDateFormatter = NSDateFormatter()
        formatter.dateStyle = .MediumStyle

        self.birdNameLabel.text = self.sighting?.name
        self.locationLabel.text = self.sighting?.location
        self.dateLabel.text     = formatter.stringFromDate(self.sighting?.date)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

}

