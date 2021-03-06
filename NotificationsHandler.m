//
//  NotificationsHandler.h
//
//  Created by Karadis on 4/14/15.
//  Copyright (c) 2015 Karadis. All rights reserved.
//

#import "NotificationsHandler.h"

void postNotification(NSString *name) {
    [[NSNotificationCenter defaultCenter] postNotificationName:name object:nil];
}

void postNotificationWithObject(NSString *name, id object) {
    [[NSNotificationCenter defaultCenter] postNotificationName:name object:object];
}

void postNotificationWithUserInfo(NSString *name, NSDictionary *userInfo) {
    [[NSNotificationCenter defaultCenter] postNotificationName:name object:nil userInfo:userInfo];
}

void postNotificationWithObjectAndUserInfo(NSString *name, id object, NSDictionary *userInfo) {
    [[NSNotificationCenter defaultCenter] postNotificationName:name object:object userInfo:userInfo];
}

void registerToNotification(id observer, SEL selector, NSString *name) {
    [[NSNotificationCenter defaultCenter] addObserver:observer selector:selector name:name object:nil];
}

void registerToMultipleNotifications(id observer, SEL selector, NSArray *names) {
    
    for (NSString *name in names) {
        [[NSNotificationCenter defaultCenter] addObserver:observer selector:selector name:name object:nil];
    }
}

void registerToNotificationWithObject(id observer, SEL selector, NSString *name, id object) {
    [[NSNotificationCenter defaultCenter] addObserver:observer selector:selector name:name object:object];
}

void registerToNotificationWithBlock(NSString *name, void (^notificationBlock)(NSNotification *note)) {
    [[NSNotificationCenter defaultCenter] addObserverForName:name object:nil queue:nil usingBlock:notificationBlock];
}

void registerToMultipleNotificationsWithBlock(NSArray *names, void (^notificationBlock)(NSNotification *note)) {
    
    for (NSString *name in names) {
        [[NSNotificationCenter defaultCenter] addObserverForName:name object:nil queue:nil usingBlock:notificationBlock];
    };
}

void registerToNotificationWithObjectBlock(NSString *name, id object, void (^notificationBlock)(NSNotification *note)) {
    [[NSNotificationCenter defaultCenter] addObserverForName:name object:object queue:nil usingBlock:notificationBlock];
}

void unregisterToNotifications(id observer) {
    [[NSNotificationCenter defaultCenter] removeObserver:observer];
}

void unregisterToNotificationsWithName(id observer, NSString *name, id object) {
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:name object:object];
}
