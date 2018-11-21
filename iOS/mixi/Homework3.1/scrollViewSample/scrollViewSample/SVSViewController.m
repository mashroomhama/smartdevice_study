//
//  SVSViewController.m
//  scrollViewSample
//
//  Created by 武田 祐一 on 2013/04/19.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "SVSViewController.h"

@interface SVSViewController ()

@end

@implementation SVSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:scrollView];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *image = [UIImage imageNamed:@"big_image.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    imageView.image = image;
    [scrollView addSubview:imageView];
    scrollView.contentSize = imageView.frame.size;
  scrollView.maximumZoomScale = 3.0; // 最大倍率
  scrollView.minimumZoomScale = 0.5; // 最小倍率
  scrollView.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
  for (UIView *view in scrollView.subviews) {
    if ([view isKindOfClass:[UIImageView class]]) {
      return view;
    }
  }
  return nil;
}


@end
