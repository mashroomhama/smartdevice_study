//
//  HomeworkViewController.h
//  MixiSample1-3_story
//
//  Created by 濱岡　俊介 on 2018/11/20.
//  Copyright © 2018年 濱岡　俊介. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HomeworkViewControllerDelegate<NSObject>
-(void) push
@end

@interface HomeworkViewController : UIViewController

@end
