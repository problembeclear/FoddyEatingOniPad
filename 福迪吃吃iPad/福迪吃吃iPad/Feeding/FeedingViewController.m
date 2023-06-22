//
//  FeedingViewController.m
//  福迪吃吃iPad
//
//  Created by 张思扬 on 2023/6/21.
//

#import "FeedingViewController.h"
#import "FeedingView.h"
#import "Masonry.h"
@interface FeedingViewController ()

@end

@implementation FeedingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageViewBackground = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"imageBackground.jpg"]];
    [self.view addSubview:imageViewBackground];
    [imageViewBackground mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(0);
        make.right.equalTo(self.view).with.offset(0);
        make.top.equalTo(self.view).with.offset(0);
        make.bottom.equalTo(self.view).with.offset(0);
    }];
    
    FeedingView *feedingView = [[FeedingView alloc]init];
    [feedingView Init];
    [self.view addSubview:feedingView];
    [feedingView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(0);
        make.right.equalTo(self.view).with.offset(0);
        make.top.equalTo(self.view).with.offset(0);
        make.bottom.equalTo(self.view).with.offset(0);
    }];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(returnBack) name:@"returnFromFeeding" object:nil];
}

- (void)returnBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
