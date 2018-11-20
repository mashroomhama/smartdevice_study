//
//  TestQueue.h
//  BasicObjectiveC
//
//  Created by 濱岡　俊介 on 2018/11/20.
//  Copyright © 2018年 武田 祐一. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestQueue : NSObject
- (void)initArray;
- (void)push:(id)object;
- (id)pop;
- (NSInteger)size;
@property (strong,nonatomic)NSMutableArray *array;
@end

