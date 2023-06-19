//
//  ViewController.m
//  福迪吃吃iPad
//
//  Created by 张思扬 on 2023/6/19.
//

#import "ViewController.h"
#import "Masonry.h"
@interface ViewController ()
@property (nonatomic, strong) UIImageView * headBar;
@property (nonatomic, strong) UIButton * buttonFeed;
@property (nonatomic, strong) UIButton *buttonDress;
@property (nonatomic, strong) UIButton *buttonFriends;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    
    UIImageView *imageBackground = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background.png"]];
    [self.view addSubview:imageBackground];
    [imageBackground mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(0);
        make.right.equalTo(self.view).with.offset(0);
        make.top.equalTo(self.view).with.offset(0);
        make.bottom.equalTo(self.view).with.offset(0);
    }];
  
    
    
    
    self.headBar = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Rectangle 87.png"]];
    [self.view addSubview:self.headBar];
    [self.headBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(40);
        make.top.equalTo(self.view).with.offset(60);
        make.width.mas_greaterThanOrEqualTo(668);
        make.height.mas_equalTo(130);
    }];
    
    UIButton *buttonHead = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.headBar addSubview:buttonHead];
    [buttonHead mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.headBar).with.offset(20);
        make.centerY.equalTo(self.headBar.mas_centerY).multipliedBy(1.0);
        make.width.equalTo(@80);
        make.height.equalTo(@80);
    }];
    [buttonHead setBackgroundImage:[UIImage imageNamed:@"Ellipse 6.png"] forState:UIControlStateNormal];
    [buttonHead setBackgroundColor:[UIColor greenColor]];
    buttonHead.layer.cornerRadius = 40;
    buttonHead.clipsToBounds = YES;
    
    
    
    _buttonFeed = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:_buttonFeed];
    [_buttonFeed mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(40);
        make.top.equalTo(self.headBar.mas_bottom).with.offset(40);
        make.width.mas_equalTo(90);
        make.height.mas_equalTo(90);
    }];
    [_buttonFeed setImage:[UIImage imageNamed:@"foddy 1.png"] forState:UIControlStateNormal];
    [_buttonFeed setBackgroundImage:[UIImage imageNamed:@"Ellipse 19.png"] forState:UIControlStateNormal];
    UILabel *labelFeed = [[UILabel alloc] init];
    [self.view addSubview:labelFeed];
    [labelFeed mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(40);
        make.top.equalTo(self.buttonFeed.mas_bottom).with.offset(5);
        make.width.mas_equalTo(90);
        make.height.mas_equalTo(20);
    }];
    labelFeed.text = @"喂养中心";
    labelFeed.textColor = [UIColor whiteColor];
    labelFeed.textAlignment = NSTextAlignmentCenter;
    labelFeed.font = [UIFont boldSystemFontOfSize:20];

    
    _buttonDress = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:_buttonDress];
    [_buttonDress mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(40);
        make.top.equalTo(labelFeed.mas_bottom).with.offset(40);
        make.width.mas_equalTo(90);
        make.height.mas_equalTo(90);
    }];
    [_buttonDress setImage:[UIImage imageNamed:@"装扮 1.png"] forState:UIControlStateNormal];
    [_buttonDress setBackgroundImage:[UIImage imageNamed:@"Ellipse 19.png"] forState:UIControlStateNormal];
    UILabel *labelDress = [[UILabel alloc] init];
    [self.view addSubview:labelDress];
    [labelDress mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(40);
        make.top.equalTo(self.buttonDress.mas_bottom).with.offset(5);
        make.width.mas_equalTo(90);
        make.height.mas_equalTo(20);
    }];
    labelDress.text = @"装  扮";
    labelDress.textColor = [UIColor whiteColor];
    labelDress.textAlignment = NSTextAlignmentCenter;
    labelDress.font = [UIFont boldSystemFontOfSize:20];

    
    _buttonFriends = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:_buttonFriends];
    [_buttonFriends mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(40);
        make.top.equalTo(labelDress.mas_bottom).with.offset(40);
        make.width.mas_equalTo(90);
        make.height.mas_equalTo(90);
    }];
    [_buttonFriends setImage:[UIImage imageNamed:@"我的k 1.png"] forState:UIControlStateNormal];
    [_buttonFriends setBackgroundImage:[UIImage imageNamed:@"Ellipse 19.png"] forState:UIControlStateNormal];
    UILabel *labelFriends = [[UILabel alloc] init];
    [self.view addSubview:labelFriends];
    [labelFriends mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(40);
        make.top.equalTo(self.buttonFriends.mas_bottom).with.offset(5);
        make.width.mas_equalTo(90);
        make.height.mas_equalTo(20);
    }];
    labelFriends.text = @"好  友";
    labelFriends.textColor = [UIColor whiteColor];
    labelFriends.textAlignment = NSTextAlignmentCenter;
    labelFriends.font = [UIFont boldSystemFontOfSize:20];
   
}




@end
