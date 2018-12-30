//
//  Janken_latestTests.m
//  Janken_latestTests
//
//  Created by 濱岡　俊介 on 2018/11/26.
//  Copyright © 2018年 濱岡　俊介. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "MixiJanken.h"

@interface Janken_latestTests : XCTestCase

@end

@implementation Janken_latestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    MixiJankenPeople *alice = [[MixiJankenPeople alloc]init];
    MixiJankenPeople *bob = [[MixiJankenPeople alloc]init];
    MixiJankenPeople *winner;
    
    alice.hand = JankenHandTypeScissors;
    bob.hand = JankenHandTypeScissors;
    
    winner = [MixiJankenDecider jankenWithPeoples:@[alice,bob]];
    /**
    XCTAssertNil(obj)    objがnilであることを期待します
    XCTAssertTrue(条件文)    条件文が真になることを期待します
    XCTAssertFalse(条件文)    条件文が偽になることを期待します
    XCTAssertEqual(a, b)    a == b となることを期待します. オブジェクト同士の比較ではなく、プリミティブの比較を行います
    XCTAssertEqualObjects(a, b)    aとbが同じオブジェクトであることを期待します. 例えば XCTAssertEqualObjects(@"foo", @"foo") とすると真になります
    XCTAssertThrows(実行文)    実行結果が例外を投げることを期待します
    */
    
    XCTAssertTrue(winner == nil);
    
    
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
