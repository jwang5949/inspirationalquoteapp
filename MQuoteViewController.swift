//
//  MotivationalQuoteViewController.swift
//  hackathonapp
//
//  Created by jwang662 on 7/7/16.
//  Copyright © 2016 jwang662. All rights reserved.
//

import Foundation
import UIKit

class MQViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var quotes: [[String]] =
        [["It always seems impossible until its done. - Nelson Mandela"],
        ["In order to succeed, we must first believe that we can. - Nikos Kazantzakis"],
        ["Failure will never overtake me if my determination to succeed is strong enough. - Og Mandino"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 140
    
        print("COUNT \(quotes.count)")
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return quotes.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        self.performSegueWithIdentifier("showAdvancedM", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showAdvancedM" {
            let indexPath = tableView.indexPathForSelectedRow!
            let sentence = quotes[indexPath.row].first
            let destinationVC = segue.destinationViewController as! DisplayQuoteViewController
            destinationVC.quote = sentence
        } else if segue.identifier == "cancel" {
            print("cancel")
        }
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("mCell", forIndexPath: indexPath) as! MQuoteTableViewCell
        
        let sentence = quotes[indexPath.row].first
        cell.quoteLabel.text = sentence
        
        return cell
    }
    
}

