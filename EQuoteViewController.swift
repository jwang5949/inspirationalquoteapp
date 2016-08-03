//
//  EQuoteViewController.swift
//  hackathonapp
//
//  Created by jwang662 on 7/7/16.
//  Copyright © 2016 jwang662. All rights reserved.
//

import Foundation
import UIKit

class EQViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var quotes: [[String]] =
        [["The secret of life, though, is to fall seven times and to get up eight times. - Paulo Coelho"],
         ["All we have to decide is what to do with the time that is given us. - J.R.R. Tolkien"],
         ["Don't let the muggles get you down. - J.K. Rowling,"],
         ["Your conscience is the measure of the honesty of your selfishness. Listen to it carefully. - Richard Bach"],
         ["Everything will be okay in the end. If it's not okay, then it's not the end. - Ed Sheeran"],
         ["You can get a thousand no's from people, and only one 'yes' from God. - Tyler Perry"],
         ["At first, they'll only dislike what you say, but the more correct you start sounding the more they'll dislike you. - Criss Jami"]
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
        self.performSegueWithIdentifier("showAdvancedE", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showAdvancedE" {
            let indexPath = tableView.indexPathForSelectedRow!
            let sentence = quotes[indexPath.row].first
            let destinationVC = segue.destinationViewController as! DisplayQuoteViewController
            destinationVC.quote = sentence
        } else if segue.identifier == "cancel" {
            print("cancel")
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("eCell", forIndexPath: indexPath) as! EQuoteTableViewCell
        
        let sentence = quotes[indexPath.row].first
        cell.eQuoteLabel.text = sentence
        
        return cell
    }
    
}
