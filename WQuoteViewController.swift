//
//  WisdomQuoteViewController.swift
//  hackathonapp
//
//  Created by jwang662 on 7/7/16.
//  Copyright © 2016 jwang662. All rights reserved.
//

import Foundation
import UIKit

class WQViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var quotes: [[String]] =
        [["The only true wisdom is in knowing you know nothing.  - Socrates"],
         ["The journey of a thousand miles begins with one step. - Lao Tzu"],
         ["By three methods we may learn wisdom: First, by reflection, which is noblest; Second, by imitation, which is easiest; and third by experience, which is the bitterest. - Confucius"],
         ["It's the little details that are vital. Little things make big things happen. - John Wooden"],
         ["A man must be big enough to admit his mistakes, smart enough to profit from them, and strong enough to correct them. - John C. Maxwell"],
         ["Genius is one percent inspiration and ninety-nine percent perspiration. - Thomas A. Edison"],
         ["Be as you wish to seem. - Socrates"],
         ["Knowing yourself is the beginning of all wisdom. - Aristotle"],
         ["Count your age by friends, not years. Count your life by smiles, not tears. - John Lennon"]
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
        self.performSegueWithIdentifier("showAdvancedW", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showAdvancedW" {
            let indexPath = tableView.indexPathForSelectedRow!
            let sentence = quotes[indexPath.row].first
            let destinationVC = segue.destinationViewController as! DisplayQuoteViewController
            destinationVC.quote = sentence
        } else if segue.identifier == "cancel" {
            print("cancel")
        }
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("wCell", forIndexPath: indexPath) as! WQuoteTableViewCell
        
        let sentence = quotes[indexPath.row].first
        cell.wQuoteLabel.text = sentence
        
        return cell
    }

}
