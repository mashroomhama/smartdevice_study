//
//  MySecondViewController.m
//  MixiSample1-3_story
//
//  Created by 濱岡　俊介 on 2018/11/19.
//  Copyright © 2018年 濱岡　俊介. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "MySecondViewController.h"

@interface MySecondViewController ()

@end

@implementation MySecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label2.text=self.nameText;
    if(self.label2.text == nil){
        self.label2.text = @"aaa";
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)TappedButton:(id)sender {
    //プロトコルを通して、MySampleControllerの閉じるメソッド呼び出し
    [self.delegate secondViewControllerTappedButton];
}
@end
