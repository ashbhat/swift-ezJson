//
//  ezJson.swift
//  ezJson
//
//  Created by Ash Bhat on 6/4/14.
//  Copyright (c) 2014 Ash Bhat. All rights reserved.
//

import Foundation


class ezJson{
    func createRequest(myUrl : String, type : String, params : NSDictionary?, completion : (AnyObject?, NSError?)->Void ){
        var url = NSURL(string: myUrl)
        var request = NSMutableURLRequest(URL: url, cachePolicy: NSURLRequestCachePolicy.UseProtocolCachePolicy, timeoutInterval: 60.0)
        if params{
            var data = NSJSONSerialization.dataWithJSONObject(params, options: NSJSONWritingOptions.PrettyPrinted, error: nil)
            request.setValue("\(data.length)", forHTTPHeaderField: "Content-Length")
            request.HTTPBody = data
        }
        request.setValue("application/json", forHTTPHeaderField:"Content-type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.HTTPMethod = type
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue(),
            completionHandler: {(response: NSURLResponse!, data: NSData!, error: NSError!) in
                var returnedObject : AnyObject! = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableLeaves, error: nil)
                completion(returnedObject,error)
            })
    }
}