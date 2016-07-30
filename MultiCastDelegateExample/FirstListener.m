//
//  FirstListener.m
//  
//
//  Created by Soaurabh Kakkar on 30/07/16.
//
//

#import "FirstListener.h"

@implementation FirstListener
- (id)initWithEventPusher:(EventPusher *)eventPusher
{
    self = [super init];
    if (self) {
        [eventPusher addDelegate:self delegateQueue:dispatch_get_main_queue()];
    }
    return self;
}
- (void) event: (EventPusher*) sender {
    NSLog(@"Delegates are fun in firstListener - %@", sender);
}

@end
