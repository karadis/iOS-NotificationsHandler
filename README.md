# iOS-NotificationsHandler
Easy access 'one-liner' static methods to NSNotificationCenter for Posting, Registering and Unregistering, Including Blocks, and registering to multiple notifications.

### Post Notification methods

```sh
void postNotification(NSString *name);
void postNotificationWithObject(NSString *name, id object);
void postNotificationWithUserInfo(NSString *name, NSDictionary *userInfo);
void postNotificationWithObjectAndUserInfo(NSString *name, id object, NSDictionary *userInfo);
```

###  Registering an Observer
```sh
void registerToNotification(id observer, SEL selector, NSString *name);
void registerToNotificationWithObject(id observer, SEL selector, NSString *name, id object);
void registerToMultipleNotifications(id observer, SEL selector, NSArray *names);
```

###  Registering an Observer With Blocks
```sh
void registerToNotificationWithBlock(NSString *name, void (^notificationBlock)(NSNotification *note));
void registerToNotificationWithObjectBlock(NSString *name, id object, void (^notificationBlock)(NSNotification *note));
void registerToMultipleNotificationsWithBlock(NSArray *names, void (^notificationBlock)(NSNotification *note));
```

###  Unregistering an Observer
```sh
void unregisterToNotifications(id observer);
void unregisterToNotificationsWithName(id observer, NSString *name, id object);
```

## How To Use

- Import Class:
```sh
#import "NotificationsHandler.h"
```

- Simply call it like a static function:

```sh
registerToNotificationWithBlock(@"some string", nil, ^(NSNotification *note) {

NSLog(note.userInfo.description);
[self reloadData];
});
```

```sh
unregisterToNotifications(self);
```

```sh
registerToNotification(self, @selector(reloadData), @"some string");
```

--
--
--

Follow me on Twitter: @lironkaradi
