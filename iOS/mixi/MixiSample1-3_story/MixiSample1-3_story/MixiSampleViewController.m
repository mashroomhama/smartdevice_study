//
//  MixiSampleViewController.m
//  MixiSample1-3_story
//
//  Created by 濱岡　俊介 on 2018/11/19.
//  Copyright © 2018年 濱岡　俊介. All rights reserved.
//

#import "MixiSampleViewController.h"
#import "MySecondViewController.h"

@interface MixiSampleViewController ()

@end

@implementation MixiSampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text = @"aaaaaaaaaaa";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.identifier isEqualToString:@"presentMySecondViewController"]){
        MySecondViewController *destination = segue.destinationViewController;
        destination.nameText = @"hehehe";
    }
}

- (IBAction)pushButton:(id)sender {
    self.label.text = @"change it";
}
- (IBAction)secondButtonTapped:(id)sender {
    //segueを使わない場合
    MySecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MySecondViewController"];
    //SecondViewControllerのdelegateに、SampleViewControllerのインスタンスを代入
    secondViewController.delegate = self;
    [self presentViewController:secondViewController animated:YES completion:nil];
    //segueを使う場合
    //[self performSegueWithIdentifier:@"presentMySecondViewController" sender:self];
}

- (IBAction)unwindToSampleViewController:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)connectExecise:(id)sender {
    [self performSegueWithIdentifier:@"execiseButton" sender:self];
}

- (IBAction)connectExeciseWithoutSegue:(id)sender {
    MySecondViewController *mySecondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ExeciseViewController"];
    mySecondViewController.delegate = self;
    [self presentViewController:mySecondViewController animated:YES completion:nil];
}

- (void)secondViewControllerTappedButton
{
    //secondViewControllerのModalが閉じる
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void) closeExeciseModal
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
