# iOS-NotificationsHandler
Easy access 'one-liner' static methods to NSNotificationCenter for Posting, Registering and Unregistering, Including Blocks.

### Post Notification methods

- For posting a quick-'no object' notification, just pass the notification's name:
```sh
void postNotification(NSString *name);
```
- For posting a standard notification with object:
```sh
void postNotificationWithObject(NSString *name, id object);
```
- For posting a notification with a userInfo dictionary (object is default nil):
```sh
void postNotificationWithUserInfo(NSString *name, NSDictionary *userInfo);
```
- For posting a notification with an object and a userInfo dictionary:
```sh
void postNotificationWithObjectAndUserInfo(NSString *name, id object, NSDictionary *userInfo);
```


###  Adding Observer with a selector and a notification name (object is default nil):
```sh
void registerToNotification(id observer, SEL selector, NSString *name);
```
###  Adding Observer with a selector, a notification name and object:
```sh
void registerToNotificationWithObject(id observer, SEL selector, NSString *name, id object);
```

###  Add an Observer with Blocks (object is default nil)
```sh
void registerToNotificationWithBlock(NSString *name, void (^notificationBlock)(NSNotification *note));
```
###  Add an Observer with Blocks and object
```sh
void registerToNotificationWithObjectBlock(NSString *name, id object, void (^notificationBlock)(NSNotification *note));
```
###  Remove an Observer
```sh
void unregisterToNotifications(id observer);
```
###  Remove a specific Observer with object
```sh
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
