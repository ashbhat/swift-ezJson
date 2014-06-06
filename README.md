swift-ezJson
============

Simple HTTP Requests (GET, POST, etc) in swift

Drag ezJson.swift into your project
-----


Post Request
---

```
ezJson().createRequest("http://postRequestURL.com", type: "POST", params: ["key" : "value"], completion: {(returnedObject : AnyObject?, error : NSError?)in
            if returnedObject{
                println("data = \(returnedObject)")
            }
})
```
    
Get Request
---

```
ezJson().createRequest("http://getRequestURL.com", type: "GET", params: nil, completion: {(returnedObject : AnyObject?, error : NSError?)in
            if returnedObject{
                println("data = \(returnedObject)")
            }
})
```
