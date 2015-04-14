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

void registerToNotification(id observer, SEL selector, NSString *name) {
    [[NSNotificationCenter defaultCenter] addObserver:observer selector:selector name:name object:nil];
}

void registerToNotificationWithObject(id observer, SEL selector, NSString *name, id object) {
    [[NSNotificationCenter defaultCenter] addObserver:observer selector:selector name:name object:object];
}

void registerToNotificationWithBlock(NSString *name, void (^notificationBlock)(NSNotification *note)) {
    [[NSNotificationCenter defaultCenter] addObserverForName:name object:nil queue:nil usingBlock:notificationBlock];
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
