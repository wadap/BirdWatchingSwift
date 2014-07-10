//
//  MasterViewController.swift
//  BirdWatchingSwift
//
//  Created by shuichi.wada on 2014/07/08.
//  Copyright (c) 2014年 shuichi.wada. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    

    var dataController: BirdSightingDataController = BirdSightingDataController()

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowSightingDetails" {
            let indexPath = self.tableView.indexPathForSelectedRow()
            let birdSighting: BirdSighting = self.dataController.objectInListAtIndex(indexPath.row)
            (segue.destinationViewController as DetailViewController).sighting = birdSighting
        }
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataController.countOfList()
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let CellIdentifer = "BirdSightingCell"
        var formatter: NSDateFormatter = NSDateFormatter()
        formatter.dateStyle = .MediumStyle
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier(CellIdentifer) as UITableViewCell
        
        let birdSighting: BirdSighting = self.dataController.objectInListAtIndex(indexPath.row)
        
        cell.textLabel.text = birdSighting.name
        cell.detailTextLabel.text = formatter.stringFromDate(birdSighting.date)

        return cell
    }

    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return false
    }
    
    @IBAction func done(segue: UIStoryboardPopoverSegue) {
        if (segue.identifier == "ReturnInput") {
            let addController: AddSightingViewController = segue.sourceViewController as AddSightingViewController
            if (addController.birdSighting) {
                self.dataController.addBirdSightingWithSighting(addController.birdSighting!)
                self.tableView.reloadData()
            }
        }
    }
    
    @IBAction func cancel(segue: UIStoryboardSegue) {
        if (segue.identifier == "CancelInput") {
            NSLog("cancel")
        }
    }

}

