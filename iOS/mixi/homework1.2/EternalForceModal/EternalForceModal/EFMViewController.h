//
//  EFMViewController.h
//  EternalForceModal
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "EFMSecondViewController.h"
#import "HomeworkViewController.h"

@interface EFMViewController : UIViewController<EMFSecondViewControllerDelegate,HomeworkViewControllerDelegate>
// TODO EMFSecondViewControllerのdelegateを準拠する

@end
