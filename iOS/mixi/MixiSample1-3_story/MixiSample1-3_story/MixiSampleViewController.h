//
//  MixiSampleViewController.h
//  MixiSample1-3_story
//
//  Created by 濱岡　俊介 on 2018/11/19.
//  Copyright © 2018年 濱岡　俊介. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MySecondViewController.h"
#import "ExeciseViewController.h"

@interface MixiSampleViewController : UIViewController <MySecondViewControllerDelegate,ExeciseViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)pushButton:(id)sender;
- (IBAction)secondButtonTapped:(id)sender;
-(IBAction)unwindToSampleViewController:(UIStoryboardSegue *)segue;
- (IBAction)connectExecise:(id)sender;
- (IBAction)connectExeciseWithoutSegue:(id)sender;


@end
