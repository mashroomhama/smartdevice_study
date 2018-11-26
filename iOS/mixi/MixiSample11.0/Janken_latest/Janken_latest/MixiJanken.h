//
//  MixiJanken.h
//  Janken_latest
//
//  Created by 濱岡　俊介 on 2018/11/26.
//  Copyright © 2018年 濱岡　俊介. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, JankenHandType)
{
    JankenHandTypeRock,
    JankenHandTypeScissors,
    JankenHandTypePaper,
    JankenHandTypeUnknown,
};

@interface MixiJankenPeople : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) JankenHandType hand;
@end


@interface MixiJankenDecider : NSObject
// じゃんけんをして、勝者を返す
// あいこの場合はnilを返す
// peoplesにはJankenPeopleを仮定しており、２人までしか対応していない
+ (MixiJankenPeople *)jankenWithPeoples:(NSArray *)peoples;
@end

