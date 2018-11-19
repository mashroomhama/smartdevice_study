//
//  ViewController.m
//  BasicObjectiveC
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "ViewController.h"

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
  

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
