//
//  EFMViewController.m
//  EternalForceModal
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "EFMViewController.h"

@interface EFMViewController ()

@end

@implementation EFMViewController

static int integerValue = 0;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender {
    EFMSecondViewController *secondViewController = [[EFMSecondViewController alloc] initWithNibName:@"EFMSecondViewController" bundle:nil];
    secondViewController.delegate = self;
    [self presentViewController:secondViewController animated:YES completion:nil];
    // TODO secondViewControllerのdelegateを自分にセット
    // TODO [self presentViewController:￼ animated:￼ completion:￼] を呼ぶ

}

#pragma EMFSecondViewController delegate

-(void) closeModalWithPushButton{
    [self dismissViewControllerAnimated:YES completion:^{
        if(integerValue == 1){
            HomeworkViewController *homeworkViewController = [[HomeworkViewController alloc] initWithNibName:@"HomeworkViewController" bundle:nil];
            homeworkViewController.delegate = self;
            [self presentViewController:homeworkViewController animated:YES completion:nil];
        }else{
            integerValue++;
        }
    }];
}

-(void) closeHomeworkModal{
    [self dismissViewControllerAnimated:YES completion:^{
        if(integerValue >= 1){
            EFMSecondViewController *secondViewController = [[EFMSecondViewController alloc] initWithNibName:@"EFMSecondViewController" bundle:nil];
            secondViewController.delegate = self;
            [self presentViewController:secondViewController animated:YES completion:nil];
        }else{
            integerValue++;
        }
    }];
}
 

// TODO EFMSecondViewController の delegateメソッドを実装
@end
