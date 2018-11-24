//
//  ViewController.m
//  NotificationSample
//
//  Created by 濱岡俊介 on 2018/11/25.
//  Copyright © 2018 濱岡俊介. All rights reserved.
//

#import "ViewController.h"
#import <UserNotifications/UserNotifications.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
//    UNAuthorizationOptions options = UNAuthorizationOptionAlert + UNAuthorizationOptionSound;
//
//    [center requestAuthorizationWithOptions:options
//                          completionHandler:^(BOOL granted, NSError * _Nullable error) {
//                              if (!granted) {
//                                  NSLog(@"Something went wrong");
//                              }
//                          }];
//
//    [center getNotificationSettingsWithCompletionHandler:^(UNNotificationSettings * _Nonnull settings) {
//        if (settings.authorizationStatus != UNAuthorizationStatusAuthorized) {
//            // Notifications not allowed
//        }
//    }];
//
//    UNMutableNotificationContent *content = [UNMutableNotificationContent new];
//    content.title = @"Don't forget";
//    content.body = @"Buy some milk";
//    content.sound = [UNNotificationSound defaultSound];
//
//    UNTimeIntervalNotificationTrigger *trigger = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:60
//                                                                                                    repeats:YES];
//    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:3600];
//    NSDateComponents *triggerDate = [[NSCalendar currentCalendar]
//                                     components:NSCalendarUnitYear +
//                                     NSCalendarUnitMonth + NSCalendarUnitDay +
//                                     NSCalendarUnitHour + NSCalendarUnitMinute +
//                                     NSCalendarUnitSecond fromDate:date];
//
//    UNCalendarNotificationTrigger *trigger2 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:triggerDate repeats:NO];
//
//    UNLocationNotificationTrigger *locTrigger = [UNLocationNotificationTrigger triggerWithRegion:nil repeats:NO];
//
//    NSString *identifier = @"UYLLocalNotification";
//    UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:identifier
//                                                                          content:content trigger:trigger];
//
//    [center addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
//        if (error != nil) {
//            NSLog(@"Something went wrong: %@",error);
//        }
//    }];
//
//    UNNotificationAction *snoozeAction = [UNNotificationAction actionWithIdentifier:@"Snooze"
//                                                                              title:@"Snooze" options:UNNotificationActionOptionNone];
//    UNNotificationAction *deleteAction = [UNNotificationAction actionWithIdentifier:@"Delete"
//                                                                              title:@"Delete" options:UNNotificationActionOptionDestructive];
//    UNNotificationCategory *category = [UNNotificationCategory categoryWithIdentifier:@"UYLReminderCategory"
//                                                                              actions:@[snoozeAction,deleteAction] intentIdentifiers:@[]
//                                                                              options:UNNotificationCategoryOptionNone];
//    NSSet *categories = [NSSet setWithObject:category];
//
//    [center setNotificationCategories:categories];

}


- (IBAction)pushButton:(id)sender {
    NSMutableArray *identifiers = [NSMutableArray array];
    
    __block NSArray *requestList = [NSArray array];
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);
    
    /***********************************************/
    //ローカル通知を設定する前に、残っている通知を削除する
    
    //通知リクエストを取得する
    [[UNUserNotificationCenter currentNotificationCenter] getPendingNotificationRequestsWithCompletionHandler:^(NSArray<UNNotificationRequest *> * _Nonnull requests) {
        requestList = requests;
        dispatch_semaphore_signal(semaphore);
    }];
    
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
    
    //通知を削除するために通知リクエストのidentifierを取得する
    for (UNNotificationRequest *notification in requestList) {
        //identifierを保持する
        [identifiers addObject:notification.identifier];
    }
    
    if(0 != identifiers.count) {
        
    }
    //通知リクエストを削除する
    [[UNUserNotificationCenter currentNotificationCenter] removePendingNotificationRequestsWithIdentifiers:identifiers];

    /***********************************************/
    
    /***********************************************/
    //通知する日付を作成する
    
    //現在日付を取得する
    NSDate *date = [NSDate date];
    
    // 年月日をとりだす
    NSDateComponents *components = [[NSCalendar currentCalendar] components:(NSCalendarUnitYear | NSCalendarUnitMonth  | NSCalendarUnitDay |
                                                                             NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond) fromDate:date];
    //現在日付の１分後に設定する
    components.minute += 1;
    components.second  = 0;
    /***********************************************/
    
    /***********************************************/
    //通知を設定する
    
    //通知する日付を指定する
    UNCalendarNotificationTrigger *trigger = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:NO];
    
    //ローカル通知時に表示するメッセージを作成する
    UNMutableNotificationContent *notification = [[UNMutableNotificationContent alloc] init];
    notification.body = @"ローカル通知 サンプル";
    notification.sound = [UNNotificationSound defaultSound];
    /***********************************************/
    
    /***********************************************/
    //通知リクエストを作成する
    UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:@"1234567890" content:notification trigger:trigger];
    
    //通知を設定する
    [[UNUserNotificationCenter currentNotificationCenter] addNotificationRequest:request
                                                           withCompletionHandler:^(NSError * _Nullable error) {
                                                           }];
    /***********************************************/
}

@end
