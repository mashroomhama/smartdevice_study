//
//  MixiSample.h
//  MixiSample1-1_obc
//
//  Created by 濱岡　俊介 on 2018/11/19.
//  Copyright © 2018年 濱岡　俊介. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, SampleType){
    SampleTypeHoge = 0,
    SampleTypeFuga,
    SampleTypePiyo
};

@interface MixiSample : NSObject

@property (nonatomic,strong) NSString *name;

-(id)initWithName:(NSString *)name sampleType:(SampleType)sampleType;
+(NSString *)getStaticString;

@end
