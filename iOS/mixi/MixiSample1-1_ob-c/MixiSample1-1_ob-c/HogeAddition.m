//
//  HogeAddition.m
//  MixiSample1-1_ob-c
//
//  Created by 濱岡　俊介 on 2018/11/19.
//  Copyright © 2018年 濱岡　俊介. All rights reserved.
//

#import "HogeAddition.h"

@implementation NSString(HogeAddition)

-(NSString *)addHogeHoge
{
    return [NSString stringWithFormat:@"%@hoge", self];
}
@end

int main(int argc,char* argv[]){
    NSLog(@"%@",[@"hello," addHogeHoge]);
    return 0;
}
