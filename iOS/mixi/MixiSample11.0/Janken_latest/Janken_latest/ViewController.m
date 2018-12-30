//
//  ViewController.m
//  Janken_latest
//
//  Created by 濱岡　俊介 on 2018/11/26.
//  Copyright © 2018年 濱岡　俊介. All rights reserved.
//

#import "ViewController.h"
#import "MixiJanken.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *winnerLabel;
@property (weak, nonatomic) IBOutlet UILabel *bobHandLabel;

@property (weak, nonatomic) IBOutlet UILabel *aliceHandLabel;
@property (strong, nonatomic) MixiJankenPeople *alice;
@property (strong, nonatomic) MixiJankenPeople *bob;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _alice = [[MixiJankenPeople alloc] init];
    _alice.name = @"alice";
    _alice.hand = JankenHandTypeUnknown;
    
    _bob = [[MixiJankenPeople alloc] init];
    _bob.name = @"bob";
    _bob.hand = JankenHandTypeUnknown;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)bobRockTapped:(id)sender {
    _bob.hand = JankenHandTypeRock;
    _bobHandLabel.text = @"ぐー";
    [self updateWinnerLabel];
}
- (IBAction)bobScissorsTapped:(id)sender {
    _bob.hand = JankenHandTypeScissors;
    _bobHandLabel.text = @"ちょき";
    [self updateWinnerLabel];
}
- (IBAction)bobPapperTapped:(id)sender {
    _bob.hand = JankenHandTypePaper;
    _bobHandLabel.text = @"ぱー";
    [self updateWinnerLabel];
}
- (IBAction)aliceRockeTapped:(id)sender {
    _alice.hand = JankenHandTypeRock;
    _aliceHandLabel.text = @"ぐー";
    [self updateWinnerLabel];
}
- (IBAction)aliceScissorsTapped:(id)sender {
    _alice.hand = JankenHandTypeScissors;
    _aliceHandLabel.text = @"ちょき";
    [self updateWinnerLabel];
}
- (IBAction)alicePaperTapped:(id)sender {
    _alice.hand = JankenHandTypePaper;
    _aliceHandLabel.text = @"ぱー";
    [self updateWinnerLabel];
}

- (void)updateWinnerLabel
{
    if (_bob.hand == JankenHandTypeUnknown || _alice.hand == JankenHandTypeUnknown) {
        return;
    }
    
    MixiJankenPeople *winner = [MixiJankenDecider jankenWithPeoples:@[_alice, _bob]];
    
    if (winner == nil) {
        _winnerLabel.text = @"あいこ";
    } else {
        _winnerLabel.text = winner.name;
    }
}



@end
