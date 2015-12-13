//
//  StdGetRequest.swift
//  Rest
//
//  Created by Ryan Poplin on 12/13/15.
//  Copyright © 2015 Ryan Poplin. All rights reserved.
//

import Foundation

struct StdGetRequest {
    var post = [String: AnyObject]()
    mutating func testGetRequest() -> NSDictionary {
        let postEndpoint = "http://jsonplaceholder.typicode.com/posts/1"
        guard let url = NSURL(string: postEndpoint) else {
            print("Error: cannot create URL")
            return post
        }
        let urlRequest = NSURLRequest(URL: url)
        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session = NSURLSession(configuration: config)
        let myCompletionHandler: (NSData?, NSURLResponse?, NSError?) -> Void = {
            (data, response, error) in
            guard let responseData = data else {
                print("Error: did not receive data")
                return
            }
            guard error == nil else {
                print("error calling GET on /posts/1")
                print(error)
                return
            }
            do {
                self.post = try NSJSONSerialization.JSONObjectWithData(responseData, options: []) as! [String: AnyObject]
                print("The post is: \(self.post.description)")
                if self.post["title"] != nil {
                    if let postTitle = self.post["title"] as? String {
                        print(postTitle)
                    }
                }
            } catch {
                print("error trying to convert data to JSON")
                return
            }
        }
        let task = session.dataTaskWithRequest(urlRequest, completionHandler: myCompletionHandler)
        task.resume()
        return post
    }
}