//
//  SwiftIPManager.swift
//  SwiftObjcCocoapodsExample
//
//  Created by 張 景隆 on 2015/1/4.
//  Copyright (c) 2015年 張 景隆. All rights reserved.
//

import Foundation

@objc public class SwiftIPManager {
    public class func getIP() {
        println("SwiftIPManager.getIP()")
        
        let manager = AFHTTPRequestOperationManager()
        
        manager.GET("http://ip.jsontest.com",
            parameters: nil,
            success: { (op:AFHTTPRequestOperation!, obj:AnyObject!) -> Void in
                //
                let ip = obj["ip"]
                println("from SwiftIPManager = \(ip) ")
            },
            failure: { (req:AFHTTPRequestOperation!, err:NSError!) -> Void in
                //
        })
    }
}