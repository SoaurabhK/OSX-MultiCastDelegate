//
//  AppDelegate.m
//  MultiCastDelegateExample
//
//  Created by Soaurabh Kakkar on 30/07/16.
//  Copyright (c) 2016 Soaurabh Kakkar. All rights reserved.
//

#import "AppDelegate.h"
#import "EventPusher.h"
#import "FirstListener.h"
#import "SecondListener.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (readonly) EventPusher *eventPusher;
@property (readonly) FirstListener *firstListener;
@property (readonly) SecondListener *secondListener;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    _eventPusher = [[EventPusher alloc] init];
    _firstListener = [[FirstListener alloc] initWithEventPusher:_eventPusher];
    _secondListener = [[SecondListener alloc] initWithEventPusher:_eventPusher];
   
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
