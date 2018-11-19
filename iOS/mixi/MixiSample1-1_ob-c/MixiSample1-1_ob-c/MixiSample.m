//
//  MixiSample.m
//  MixiSample1-1_obc
//
//  Created by 濱岡　俊介 on 2018/11/19.
//  Copyright © 2018年 濱岡　俊介. All rights reserved.
//

#import "MixiSample.h"

static NSString *const constString = @"const";
static NSString *staticString = @"static";

@interface MixiSample()

@property (nonatomic,unsafe_unretained) BOOL isEnabled;
@property (nonatomic,unsafe_unretained) SampleType sampleType;

@end

@implementation MixiSample

-(id)initWithName:(NSString *)name sampleType:(SampleType)sampleType
{
    self = [super init];
    if(self != nil){
        _name = name;
        _sampleType = sampleType;
        _isEnabled = NO;
    }
    return self;
}

+(NSString *)getStaticString
{
    return constString;
}

@end
/**
int main(int argc,char *argv[]){
    MixiSample *mixiSample = [[MixiSample alloc] initWithName:@"aiuro" sampleType:1];
    NSLog(@"%@",[MixiSample getStaticString]);
    NSLog(@"%@",mixiSample.name);
    NSLog(@"%d",mixiSample.isEnabled);
    NSLog(@"%lu",mixiSample.sampleType);
    return 0;
}
 */





