//
//  ViewController.swift
//  pushbox
//
//  Created by Florin Voinescu on 30/03/15.
//  Copyright (c) 2015 Florin Voinescu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var navButtonHelp: UIBarButtonItem!

    @IBOutlet weak var navButtonSetup: UIBarButtonItem!
    
    @IBOutlet weak var labelURL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 0.5)

        
        navButtonHelp.imageInsets=UIEdgeInsetsMake(7.5, 0, 6, 15)
        
        navButtonSetup.imageInsets=UIEdgeInsetsMake(7.5, 15, 6, 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSendUrl(sender: AnyObject) {
    //UIApplication.sharedApplication().openURL(NSURL(string: btnSendUrl.currentTitle))
        var url="http://"
        
        url += labelURL.text!

        println(url)
        
        if let checkURL = NSURL(string: url) {
            if UIApplication.sharedApplication().openURL(checkURL) {
                println("url sucefully opened")
            }
        } else {
            println("invalid url")
        }
    }

}

