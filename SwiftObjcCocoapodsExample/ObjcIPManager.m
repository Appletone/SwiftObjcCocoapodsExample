//
//  ObjcIPManager.m
//  SwiftObjcCocoapodsExample
//
//  Created by 張 景隆 on 2015/1/4.
//  Copyright (c) 2015年 張 景隆. All rights reserved.
//

#import "ObjcIPManager.h"
#import <AFNetworking.h>
#import "SwiftObjcCocoapodsExample-Swift.h"

@implementation ObjcIPManager

+(void)getIP
{
    NSLog(@"[ObjcIPManager ObjcIPManager]");
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://ip.jsontest.com" parameters:nil
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             //
             NSLog(@"from ObjcIPManager = %@", responseObject[@"ip"]);
         }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             //
         }
     ];
}

+(void)getIPFromSwift
{
    NSLog(@"[ObjcIPManager getIPFromSwift]");
    
    [SwiftIPManager getIP];
}

@end
