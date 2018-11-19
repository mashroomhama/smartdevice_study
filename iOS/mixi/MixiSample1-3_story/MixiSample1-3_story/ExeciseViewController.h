//
//  ExeciseViewController.h
//  MixiSample1-3_story
//
//  Created by 濱岡　俊介 on 2018/11/19.
//  Copyright © 2018年 濱岡　俊介. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ExeciseViewControllerDelegate <NSObject>
-(void) closeExeciseModal;
@end

@interface ExeciseViewController : UIViewController
- (IBAction)pushButton:(id)sender;
@property (weak,nonatomic) id<ExeciseViewControllerDelegate> delegate;
@end
