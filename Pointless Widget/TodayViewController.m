//
//  TodayViewController.m
//  Pointless Widget
//
//  Created by Andrew Mellen on 3/17/15.
//  Copyright (c) 2015 theawesomecoder61. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>

@interface TodayViewController () <NCWidgetProviding>

@property (weak, nonatomic) IBOutlet UIImageView *imgy;

@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
   self.preferredContentSize = CGSizeMake(0, 300);
   
   UIImageView *animatedImageView = self.imgy;
   animatedImageView.animationImages = [NSArray arrayWithObjects:
                                        [UIImage imageNamed:@"tmp-0.gif"],
                                        [UIImage imageNamed:@"tmp-1.gif"],
                                        [UIImage imageNamed:@"tmp-2.gif"],
                                        [UIImage imageNamed:@"tmp-3.gif"],
                                        [UIImage imageNamed:@"tmp-4.gif"],
                                        [UIImage imageNamed:@"tmp-5.gif"],
                                        [UIImage imageNamed:@"tmp-6.gif"],
                                        [UIImage imageNamed:@"tmp-7.gif"],
                                        [UIImage imageNamed:@"tmp-8.gif"],
                                        [UIImage imageNamed:@"tmp-9.gif"],
                                        [UIImage imageNamed:@"tmp-10.gif"],
                                        [UIImage imageNamed:@"tmp-11.gif"], nil];
   animatedImageView.animationDuration = 0.8f;
   animatedImageView.animationRepeatCount = 0;
   [animatedImageView startAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}

- (UIEdgeInsets)widgetMarginInsetsForProposedMarginInsets:(UIEdgeInsets)margins {
   margins.bottom = 10.0;
   return margins;
}

@end
