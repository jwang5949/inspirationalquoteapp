//
//  ListQuoteTableViewController.swift
//  hackathonapp
//
//  Created by jwang662 on 7/7/16.
//  Copyright © 2016 jwang662. All rights reserved.
//

import Foundation
import UIKit

class ListQuotesTableViewController: UITableViewController {

override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
}

override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    // 3
    let cell = tableView.dequeueReusableCellWithIdentifier("listNotesTableViewCell", forIndexPath: indexPath)
    
    // 4
    cell.textLabel?.text = "Yay - it's working!"
    
    // 5
    return cell
}
}