//
//  TestQueue.m
//  BasicObjectiveC
//
//  Created by 濱岡　俊介 on 2018/11/20.
//  Copyright © 2018年 武田 祐一. All rights reserved.
//

#import "TestQueue.h"


@implementation TestQueue

- (void)initArray{
    _array = [NSMutableArray array];
}

- (void)push:(id)object{
    //Stackは先頭に追加する。Stackは後入れ先出し(LIFO)
    //Queueは先入れ先出し(FIFO)
    [_array addObject:object];
}

- (id)pop{
    if([_array count]!=0){
        NSObject *temp = _array[0];
        [_array removeObjectAtIndex:0];
        return temp;
    }
    return nil;
}

- (NSInteger)size{
    return [_array count];
}
@end
