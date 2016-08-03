//
//  IQuoteViewController.swift
//  hackathonapp
//
//  Created by jwang662 on 7/7/16.
//  Copyright © 2016 jwang662. All rights reserved.
//

import Foundation
import UIKit

class IQViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var quotes: [[String]] =
        [["When one door closes another door opens; but we so often look so long and so regretfully upon the closed door,that we do not see the ones which open for us. - Alexander Graham Bell"],
         ["Life is a succession of lessons which must be lived to be understood. - Helen Keller"],
         ["You must do the thing you think you cannot do. - Eleanor Roosevelt"]
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
        self.performSegueWithIdentifier("showAdvancedI", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showAdvancedI" {
            let indexPath = tableView.indexPathForSelectedRow!
            let sentence = quotes[indexPath.row].first
            let destinationVC = segue.destinationViewController as! DisplayQuoteViewController
            destinationVC.quote = sentence
        } else if segue.identifier == "cancel" {
            print("cancel")
        }
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("iCell", forIndexPath: indexPath) as! IQuoteTableViewCell
        
        let sentence = quotes[indexPath.row].first
        cell.iQuoteLabel.text = sentence
        
        return cell
    }
    
}