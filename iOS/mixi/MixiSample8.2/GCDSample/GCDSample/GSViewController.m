//
//  GSViewController.m
//  GCDSample
//  Grand Central Dispatch
//
//  Created by 武田 祐一 on 2013/05/07.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "GSViewController.h"

@interface GSViewController ()

@end

@implementation GSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{

        NSLog(@"another thread");

    });

    NSLog(@"here111111!!");
    
    for (NSInteger i = 0 ; i < 100; ++i) {
        dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        dispatch_async(queue, ^{
            NSLog(@"aa%ld", i);
        });
    }
    
    NSLog(@"here222222!!");
    
    for (NSInteger i = 0 ; i < 100; ++i) {
        dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        dispatch_sync(queue, ^{
            NSLog(@"bb%ld", i);
        });
    }
    
    NSLog(@"here33333!!");
    
    dispatch_group_t group = dispatch_group_create(); // 1. dispatch group の生成
    
    for (NSInteger i = 0 ; i < 100; ++i) {
        dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        
        // 2. タスクをdispatch_queue に追加
        dispatch_group_async(group, queue, ^{
            NSLog(@"cc%ld", i);
        });
        
    }
    
    // 3. タスクの終了まで待機
    dispatch_group_wait(group, DISPATCH_TIME_FOREVER);
    
    NSLog(@"here!!4444");
    
    // 4. 不要になったgroupをrelease
    //dispatch_release(group);
    dispatch_queue_t queue = dispatch_queue_create("jp.mixi.ios.sample.barrier", DISPATCH_QUEUE_CONCURRENT);
    NSMutableString *string = [NSMutableString string];
    
    for (NSInteger i = 0 ; i < 100; ++i) {
        if (i % 10 == 0) { // 書き込み処理
            dispatch_async(queue, ^{
                [string deleteCharactersInRange:NSMakeRange(0, string.length)];
                [string appendFormat:@"dd%02d", i];
            });
            
        } else { // 読み込み処理
            
            dispatch_async(queue, ^{
                NSLog(@"%02d : string = %@", i, string);
            });
            
        }
    }


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
