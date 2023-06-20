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
@property (nonatomic, strong) UIImageView *trueFoddy;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    //背景图
    UIImageView *imageBackground = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background.png"]];
    [self.view addSubview:imageBackground];
    [imageBackground mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(0);
        make.right.equalTo(self.view).with.offset(0);
        make.top.equalTo(self.view).with.offset(0);
        make.bottom.equalTo(self.view).with.offset(0);
    }];
  
    
    
    //头部栏
    self.headBar = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Rectangle 87.png"]];
    [self.view addSubview:self.headBar];
    [self.headBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(40);
        make.top.equalTo(self.view).with.offset(60);
        make.width.mas_greaterThanOrEqualTo(668);
        make.height.mas_equalTo(110);
    }];
    //头部栏内头像
    UIButton *buttonHead = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.headBar addSubview:buttonHead];
    [buttonHead mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.headBar).with.offset(20);
        make.centerY.equalTo(self.headBar.mas_centerY).multipliedBy(1.0);
        make.width.equalTo(@80);
        make.height.equalTo(@80);
    }];
    [buttonHead setBackgroundImage:[UIImage imageNamed:@"Ellipse 6.png"] forState:UIControlStateNormal];
    [buttonHead setBackgroundColor:[UIColor colorWithRed:130.0/255 green:202.0/255 blue:63.0/255 alpha:1]];
    buttonHead.layer.cornerRadius = 40;
    buttonHead.clipsToBounds = YES;
    //头部栏内昵称
    UILabel *labelName = [[UILabel alloc] init];
    [self.headBar addSubview:labelName];
    [labelName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(buttonHead.mas_right).with.offset(20);
        make.top.equalTo(self.headBar).with.offset(10);
        make.width.equalTo(@240);
        make.height.equalTo(@50);
    }];
    labelName.text = @"昵称：小锅同学";
    labelName.textColor = [UIColor colorWithRed:130.0/255 green:202.0/255 blue:63.0/255 alpha:1];
    labelName.font = [UIFont boldSystemFontOfSize:25];
    
    //头部栏内账号
    UILabel *labelAccount = [[UILabel alloc] init];
    [self.headBar addSubview:labelAccount];
    [labelAccount mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(buttonHead.mas_right).with.offset(20);
        make.bottom.equalTo(self.headBar.mas_bottom).with.offset(-10);
        make.width.equalTo(@240);
        make.height.equalTo(@50);
    }];
    labelAccount.text = @"账号：5634568";
    labelAccount.textColor = [UIColor blackColor];
    labelAccount.font = [UIFont boldSystemFontOfSize:25];
    
    //喂养按钮
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

    //装扮按钮
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

    //交友按钮
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
    
    
    //白1
    UIImageView *imageViewBiggest = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Rectangle 58.png"]];
    [self.view addSubview:imageViewBiggest];
    [imageViewBiggest mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.buttonFeed.mas_right).with.offset(40);
        make.top.equalTo(self.headBar.mas_bottom).with.offset(40);
        make.width.mas_equalTo(self.view.bounds.size.width/2.0);
        make.height.mas_equalTo(260);
    }];
    //哈喽
    UILabel *labelHello = [[UILabel alloc] init];
    [imageViewBiggest addSubview:labelHello];
    [labelHello mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imageViewBiggest).with.offset(20);
        make.top.equalTo(imageViewBiggest).with.offset(40);
        make.width.mas_equalTo(350);
        make.height.mas_equalTo(60);
    }];
    labelHello.text = @"早上好! 亲爱的小锅同学";
    labelHello.font = [UIFont boldSystemFontOfSize:30];
    labelHello.textColor = [UIColor blackColor];
    UILabel *labelText = [[UILabel alloc] init];
    [imageViewBiggest addSubview:labelText];
    [labelText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imageViewBiggest).with.offset(20);
        make.top.equalTo(labelHello.mas_bottom).with.offset(10);
        make.width.mas_equalTo(self.view.bounds.size.width/2.0-50);
        make.height.mas_equalTo(120);
    }];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:@"你听说了吗？福迪小镇的科学家说吃掉蘑菇，蘑菇在我们体内会变成体内细胞的后援军，在我们生病的时候可以提高我们的战斗力呢! "];
    [attributedString addAttribute:NSKernAttributeName value:@(3.5) range:NSMakeRange(0, [attributedString length])];
    labelText.attributedText = attributedString;
    [labelText sizeToFit];
    labelText.font = [UIFont boldSystemFontOfSize:18];
    labelText.textColor = [UIColor blackColor];
    labelText.numberOfLines = 0;
    //白2
    UIImageView *imageViewSmallest = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Rectangle 92.png"]];
    [self.view addSubview:imageViewSmallest];
    [imageViewSmallest mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.buttonFeed.mas_right).with.offset(40);
        make.top.equalTo(imageViewBiggest.mas_bottom).with.offset(20);
        make.width.mas_equalTo(180);
        make.height.mas_equalTo(220);
    }];
    //状态福迪
    UIImageView *foddyState = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"foddyState.png"]];
    [imageViewSmallest addSubview:foddyState];
    [foddyState mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(foddyState.mas_centerX).multipliedBy(1.0);
        make.centerY.equalTo(foddyState.mas_centerY).multipliedBy(1.0);
        make.width.mas_equalTo(170);
        make.height.mas_equalTo(200);
    }];
    //白3
    UIImageView *imageViewMiddle = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Rectangle 88.png"]];
    [self.view addSubview:imageViewMiddle];
    [imageViewMiddle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imageViewSmallest.mas_right).with.offset(20);
        make.top.equalTo(imageViewBiggest.mas_bottom).with.offset(20);
        make.right.equalTo(imageViewBiggest.mas_right).with.offset(0);
        make.height.mas_equalTo(220);
    }];
    
    self.trueFoddy = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"trueFoddy.png"]];
    [self.view addSubview:_trueFoddy];
    [_trueFoddy mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imageViewBiggest.mas_right).with.offset(10);
        make.top.equalTo(labelFeed).with.offset(0);
        make.width.mas_equalTo(350);
        make.height.mas_equalTo(450);
    }];
    
    
}




@end
