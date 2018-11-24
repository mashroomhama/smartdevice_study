//
//  AppDelegate.h
//  NotificationSample
//
//  Created by 濱岡俊介 on 2018/11/25.
//  Copyright © 2018 濱岡俊介. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
//ヘッダをインポートする
#import <UserNotifications/UserNotifications.h>

//UserNotificationsのDelegateを設定する
@interface AppDelegate : UIResponder <UIApplicationDelegate, UNUserNotificationCenterDelegate>
@property (strong, nonatomic) UIWindow *window;
@property (readonly, strong) NSPersistentContainer *persistentContainer;
- (void)saveContext;
@end

