//
//  ViewController.swift
//  ezJson
//
//  Created by Ash Bhat on 6/4/14.
//  Copyright (c) 2014 Ash Bhat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func getRequestTapped(sender : AnyObject) {
        ezJson().createRequest("http://ezjson.herokuapp.com/ezJSON/test", type: "GET", params: nil, completion: {(returnedObject : AnyObject?, error : NSError?)in
            if returnedObject{
                println("data = \(returnedObject)")
            }
            })
    }
    
    @IBAction func postRequestTapped(sender : AnyObject) {
        ezJson().createRequest("http://ezjson.herokuapp.com/ezJSON", type: "POST", params: ["key" : "value"], completion: {(returnedObject : AnyObject?, error : NSError?)in
            if returnedObject{
                println("data = \(returnedObject)")
            }
            })
    }
    
}

