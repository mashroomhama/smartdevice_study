//
//  ViewController.m
//  BasicObjectiveC
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "ViewController.h"
#import "TestQueue.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // TODO ここに課題を書き進めていってください
    NSLog(@"%@",@"Hello,World!");
    
    NSArray *array = @[@"aiueo",@"kakikukeko"];
    id obj = array[0];
    NSLog(@"%@",obj);
    //array[0] = @"aaa"; //Mutableじゃないので、変更不可
    NSMutableArray *array2 = [NSMutableArray array];
    [array2 addObject:@"aaa"];
    [array2 addObject:@"bbb"];
    [array2 removeObjectAtIndex:0];
    [array2 addObject:@"bbb"];
    [array2 addObject:@"bbb"];
    [array2 addObject:@"bbb"];
    NSLog(@"%@",array2);
    
    NSDictionary *dict = @{@"key" : @"value"};
    id obj2 = dict[@"key"];
    NSLog(@"%@",obj2);
    //dict[@"hoge"] = @"fuga"; //Mutableじゃないので、変更不可
    
    NSMutableDictionary *dict2 = [NSMutableDictionary dictionary];
    dict2[@"hello"] = @"world";
    [dict2 removeObjectForKey:@"hello"];
    dict2[@"hello"] = nil;//nilを代入するとクラッシュ、、、しない。
    NSLog(@"%@",dict2);
    
    NSString *str = @"hoge fuga";
    NSMutableString *mutable = [NSMutableString string];
    [mutable appendString:@"hogehoge"]; // 文字列をappend
    
    NSString *string = [NSString stringWithFormat:@"%d + %d = %d",1 ,2, 3]; // フォーマット指定子も利用可能
    NSLog(@"%@", string); // "1 + 2 = 3"
    NSLog(@"%@",str);
    NSMutableArray *arr1 = [NSMutableArray array];
    NSMutableDictionary *dict2_ = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict3 = [NSMutableDictionary dictionary];
    dict2_[@"domain"] = @"mixi.jp";
    NSArray *arr2 = @[@"list_voice.pl",@"list_diary.pl",@"list_mymall_item.pl"];
    dict2_[@"entry"] = arr2;
    NSMutableDictionary *dict4 = [NSMutableDictionary dictionary];
    dict3[@"domain"] = @"mmall.jp";
    dict4[@"path"] = @"add_diary.pl";
    NSMutableDictionary *dict5 = [NSMutableDictionary dictionary];
    dict5[@"tag_id"] = @"7";
    dict4[@"path"] = @"add_diary.pl";
    dict4[@"query"] = dict5;
    dict3[@"entry"] = dict4;
    NSMutableDictionary *dict6 = [NSMutableDictionary dictionary];
    dict6[@"domain"] = @"itunes.apple.com";
    [arr1 addObject:dict2_];
    [arr1 addObject:dict3];
    [arr1 addObject:dict6];
    NSLog(@"%@",arr1);
    
    TestQueue *testQueue = [[TestQueue alloc] init];
    [testQueue initArray];
    [testQueue push:@"aiueo"];
    [testQueue push:@"aiueo"];
    NSLog(@"%ld",[testQueue size]);
    NSLog(@"%@",[testQueue pop]);
    NSLog(@"%@",[testQueue pop]);
    NSLog(@"%@",[testQueue pop]);
    NSLog(@"%ld",[testQueue size]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
