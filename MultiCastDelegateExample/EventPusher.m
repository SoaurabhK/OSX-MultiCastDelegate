//
//  EventPusher.m
//  
//
//  Created by Soaurabh Kakkar on 30/07/16.
//
//

#import "EventPusher.h"

@interface EventPusher()

@property (readonly) NSString* message;
@property (readonly) GCDMulticastDelegate <EventPusherDelegate> *multicastDelegate;

@end

@implementation EventPusher

- (id)init
{
    self = [super init];
    if (self) {
        _message = @"Hi, I'm Soaurabh";
        _multicastDelegate = (GCDMulticastDelegate <EventPusherDelegate> *)[[GCDMulticastDelegate alloc] init];
        [self startSomeProcess];
    }
    return self;
}

- (void)addDelegate:(id)delegate delegateQueue:(dispatch_queue_t)delegateQueue
{
    [_multicastDelegate addDelegate:delegate delegateQueue:delegateQueue];
}

- (void)removeDelegate:(id)delegate delegateQueue:(dispatch_queue_t)delegateQueue
{
    [_multicastDelegate removeDelegate:delegate delegateQueue:delegateQueue];
}

-(void)startSomeProcess
{
    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(pushMessage) userInfo:nil repeats:YES];
}

- (void) pushMessage {
    if ([_multicastDelegate hasDelegateThatRespondsToSelector:@selector(event:)]) {
        [_multicastDelegate event:self];  //this will call the method implemented in your other class
    }
}

@end
