//
//  iOS-NotificationsHandler.h
//
//  Created by Karadis on 4/14/15.
//  Copyright (c) 2015 Karadis. All rights reserved.
//
// This code is distributed under the terms and conditions of the MIT license.

//==========================================================================================================
// Easy access methods to NSNotificatioCenter for Posting, Registering and Unregistering, Including Blocks.
//==========================================================================================================

// Post Notification
void postNotification(NSString *name);
void postNotificationWithObject(NSString *name, id object);
void postNotificationWithUserInfo(NSString *name, NSDictionary *userInfo);
void postNotificationWithObjectAndUserInfo(NSString *name, id object, NSDictionary *userInfo);

// Add Observer
void registerToNotification(id observer, SEL selector, NSString *name);
void registerToMultipleNotifications(id observer, SEL selector, NSArray *names);
void registerToNotificationWithObject(id observer, SEL selector, NSString *name, id object);

// Add Observer with Blocks
void registerToNotificationWithBlock(NSString *name, void (^notificationBlock)(NSNotification *note));
void registerToNotificationWithObjectBlock(NSString *name, id object, void (^notificationBlock)(NSNotification *note));
void registerToMultipleNotificationsWithBlock(NSArray *names, void (^notificationBlock)(NSNotification *note));

// Remove Observer
void unregisterToNotifications(id observer);
void unregisterToNotificationsWithName(id observer, NSString *name, id object);