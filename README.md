swift-ezJson
============

Simple HTTP Requests (GET, POST, etc) in swift

Drag ezJson.swift into your project
-----


Post Request
---

```
        ezJson().postRequest(myUrl: "http://ezjson.herokuapp.com/ezJSON", params: ["key" : "value"]){ (returnedObject : AnyObject?, error : NSError?) in
            if (returnedObject != nil){
                print("\(returnedObject)")
            }
        }
```
    
Get Request
---

```
        ezJson().getRequest(myUrl: "http://ezjson.herokuapp.com/ezJSON/test") { (returnedObject : AnyObject?, error : NSError?) in
            if (returnedObject != nil){
                 print("\(returnedObject)")
            }
        }
```
