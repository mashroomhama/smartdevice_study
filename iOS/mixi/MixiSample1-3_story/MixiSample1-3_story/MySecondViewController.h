//
//  MySecondViewController.h
//  MixiSample1-3_story
//
//  Created by 濱岡　俊介 on 2018/11/19.
//  Copyright © 2018年 濱岡　俊介. All rights reserved.
//

#import <UIKit/UIKit.h>

//プロトコルに準拠する
@protocol MySecondViewControllerDelegate <NSObject>
- (void)secondViewControllerTappedButton;
@end

@interface MySecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property NSString *nameText;
//モーダルを閉じるボタン押下時のメソッド
- (IBAction)TappedButton:(id)sender;
//デリゲート、弱参照じゃないと循環参照が発生する
@property (weak,nonatomic) id<MySecondViewControllerDelegate> delegate;
@end
