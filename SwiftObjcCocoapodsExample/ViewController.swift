//
//  ViewController.swift
//  SwiftObjcCocoapodsExample
//
//  Created by 張 景隆 on 2015/1/4.
//  Copyright (c) 2015年 張 景隆. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
        // call Swift
        SwiftIPManager.getIP()
        
        // call ObjC
        ObjcIPManager.getIP()
        
        // from Objc call Swift
        ObjcIPManager.getIPFromSwift()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //*****************************************
    func afnetworkingTesting() {
        let manager = AFHTTPRequestOperationManager()
        
        manager.GET("http://ip.jsontest.com",
            parameters: nil,
            success: { (op:AFHTTPRequestOperation!, obj:AnyObject!) -> Void in
                //
            },
            failure: { (req:AFHTTPRequestOperation!, err:NSError!) -> Void in
                //
        })
        
        
        // 省略 -> Void
        manager.GET("http://ip.jsontest.com",
            parameters: nil,
            success: { (operation: AFHTTPRequestOperation!, responseObject: AnyObject!) in
                println(responseObject["ip"])
            },
            failure: { (operation: AFHTTPRequestOperation!, error: NSError!) in
            }
        )
    }
}

