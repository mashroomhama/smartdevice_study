//
//  HomeworkViewController.h
//  EternalForceModal
//
//  Created by 濱岡　俊介 on 2018/11/20.
//  Copyright © 2018年 武田 祐一. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol HomeworkViewControllerDelegate<NSObject>
-(void) closeHomeworkModal;
@end

@interface HomeworkViewController : UIViewController
@property (nonatomic, weak) id<HomeworkViewControllerDelegate> delegate;
- (IBAction)pushHomeworkModal:(id)sender;
@end
