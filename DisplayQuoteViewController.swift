//
//  DisplayQuoteViewController.swift
//  hackathonapp
//
//  Created by jwang662 on 7/8/16.
//  Copyright © 2016 jwang662. All rights reserved.
//

import UIKit
class DisplayQuoteViewController: UIViewController {
    
    @IBOutlet weak var FinalQuoteLabel: UILabel!
    
    var quote: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
         FinalQuoteLabel.text = quote
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}