//
//  ViewController.swift
//  swift-ezJson
//
//  Created by Ash Bhat on 1/4/17.
//  Copyright © 2017 Ash Bhat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getRequestTapped(sender : AnyObject) {
        ezJson().getRequest(myUrl: "http://ezjson.herokuapp.com/ezJSON/test") { (returnedObject : AnyObject?, error : NSError?) in
            if (returnedObject != nil){
                 print("\(returnedObject)")
            }
        }
    }
    
    @IBAction func postRequestTapped(sender : AnyObject) {
        ezJson().postRequest(myUrl: "http://ezjson.herokuapp.com/ezJSON", params: ["key" : "value"]){ (returnedObject : AnyObject?, error : NSError?) in
            if (returnedObject != nil){
                print("\(returnedObject)")
            }
        }
    }
}

