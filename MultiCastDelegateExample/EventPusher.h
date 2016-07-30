//
//  EventPusher.h
//  
//
//  Created by Soaurabh Kakkar on 30/07/16.
//
//

#import <Foundation/Foundation.h>
#import "EventPusherDelegate.h"
#import "GCDMulticastDelegate.h"

@interface EventPusher : NSObject

- (void)addDelegate:(id)delegate delegateQueue:(dispatch_queue_t)delegateQueue;
- (void)removeDelegate:(id)delegate delegateQueue:(dispatch_queue_t)delegateQueue;

@end

