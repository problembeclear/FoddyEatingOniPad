//
//  DressUpViewController.m
//  福迪吃吃iPad
//
//  Created by 张思扬 on 2023/6/21.
//

#import "DressUpViewController.h"
#import "DressUpView.h"
#import "Masonry.h"
@interface DressUpViewController ()

@end

@implementation DressUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageViewBackground = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"backImage.jpg"]];
    [self.view addSubview:imageViewBackground];
    [imageViewBackground mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(0);
        make.right.equalTo(self.view).with.offset(0);
        make.top.equalTo(self.view).with.offset(0);
        make.bottom.equalTo(self.view).with.offset(0);
    }];
    
    DressUpView *dressUpView = [[DressUpView alloc]init];
    [dressUpView Init];
    [self.view addSubview:dressUpView];
    [dressUpView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(0);
        make.right.equalTo(self.view).with.offset(0);
        make.top.equalTo(self.view).with.offset(0);
        make.bottom.equalTo(self.view).with.offset(0);
    }];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(returnBack) name:@"returnFromDressUp" object:nil];
}

- (void)returnBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
