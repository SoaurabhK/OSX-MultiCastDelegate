//
//  EventPusherProtocol.h
//  DelegateExample
//
//  Created by Soaurabh Kakkar on 29/07/16.
//  Copyright (c) 2016 Soaurabh Kakkar. All rights reserved.
//

#ifndef DelegateExample_EventPusherProtocol_h
#define DelegateExample_EventPusherProtocol_h

@class EventPusher;
@protocol EventPusherDelegate <NSObject>   //define delegate protocol
- (void) event: (EventPusher*) sender;  //define delegate method to be implemented within another class
@end //end protocol

#endif
