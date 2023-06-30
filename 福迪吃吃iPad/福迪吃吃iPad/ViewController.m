//
//  ViewController.m
//  福迪吃吃iPad
//
//  Created by 张思扬 on 2023/6/19.
//

#import "ViewController.h"
#import "Masonry.h"
#import "FeedingViewController.h"
#import "DressUpViewController.h"
#import "FriendsViewController.h"
@interface ViewController ()
@property (nonatomic, strong) UIImageView * headBar;
@property (nonatomic, strong) UIButton * buttonFeed;
@property (nonatomic, strong) UIButton *buttonDress;
@property (nonatomic, strong) UIButton *buttonFriends;
@property (nonatomic, strong) UIImageView *trueFoddy;
@property (nonatomic, strong) UILabel *labelTime;
@property (nonatomic, strong) UIButton *buttonRed;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    //背景图
    UIImageView *imageBackground = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"backImage.jpg"]];
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
    
    UIImageView *imageGrade = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"9051687701962_.pic.jpg"]];
    [self.view addSubview:imageGrade];
    [imageGrade mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.headBar.mas_right).with.offset(30);
        make.top.equalTo(self.headBar.mas_top).with.offset(0);
        make.width.equalTo(@120);
        make.height.equalTo(@120);
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
    labelName.font = [UIFont fontWithName:@"Verdana-Bold" size:25];
    
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
    labelAccount.font = [UIFont fontWithName:@"Verdana-Bold" size:25];
    
    UILabel *labelEXP = [[UILabel alloc] init];
    labelEXP.text = @"健康经验";
    [self.view addSubview:labelEXP];
    [labelEXP mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(labelName.mas_right).with.offset(30);
        make.top.equalTo(labelName.mas_top).with.offset(0);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(50);
    }];
    labelEXP.font = [UIFont fontWithName:@"Verdana-Bold" size:25];
    
    UIImageView *grayEXP = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Rectangle 90.png"]];
    [self.view addSubview:grayEXP];
    [grayEXP mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(labelEXP.mas_right).with.offset(20);
        make.right.equalTo(self.headBar.mas_right).with.offset(-20);
        make.top.equalTo(labelEXP.mas_top).with.offset(10);
        make.height.mas_equalTo(30);
    }];
    
    UIImageView *greenEXP = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Rectangle 91.png"]];
    [self.view addSubview:greenEXP];
    [greenEXP mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(labelEXP.mas_right).with.offset(20);
        make.top.equalTo(labelEXP.mas_top).with.offset(10);
        make.height.mas_equalTo(30);
        make.width.mas_equalTo(80);
    }];
    
    UILabel *labelGold = [[UILabel alloc] init];
    labelGold.text = @"装扮币";
    [self.view addSubview:labelGold];
    [labelGold mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(labelName.mas_right).with.offset(30);
        make.top.equalTo(labelAccount.mas_top).with.offset(0);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(50);
    }];
    labelGold.font = [UIFont fontWithName:@"Verdana-Bold" size:25];
    
    
    UIImageView *imageGold = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"金币 2"]];
    [self.view addSubview:imageGold];
    [imageGold mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(labelGold.mas_right).with.offset(10);
        make.top.equalTo(labelAccount.mas_top).with.offset(0);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(50);
    }];
    
    
    //喂养按钮
    _buttonFeed = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:_buttonFeed];
    [_buttonFeed mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(40);
        make.top.equalTo(self.headBar.mas_bottom).with.offset(40);
        make.width.mas_equalTo(90);
        make.height.mas_equalTo(90);
    }];
    [_buttonFeed addTarget:self action:@selector(getFeeding) forControlEvents:UIControlEventTouchUpInside];
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
    
    _buttonRed = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_buttonRed setBackgroundImage:[UIImage imageNamed:@"Ellipse 27-2.png"] forState:UIControlStateNormal];
    [_buttonRed setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:_buttonRed];
    [_buttonRed mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.buttonFeed.mas_right).with.offset(-2);
        make.top.equalTo(self.buttonFeed.mas_top).with.offset(0);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dismissRed) name:@"removeRed" object:nil];

    //装扮按钮
    _buttonDress = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:_buttonDress];
    [_buttonDress mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(40);
        make.top.equalTo(labelFeed.mas_bottom).with.offset(40);
        make.width.mas_equalTo(90);
        make.height.mas_equalTo(90);
    }];
    [_buttonDress addTarget:self action:@selector(getDressUp) forControlEvents:UIControlEventTouchUpInside];
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
    [_buttonFriends addTarget:self action:@selector(getFriends) forControlEvents:UIControlEventTouchUpInside];
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
//    labelHello.font = [UIFont boldSystemFontOfSize:30];
    labelHello.font = [UIFont fontWithName:@"Verdana-Bold" size:30];
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
    [attributedString addAttribute:NSKernAttributeName value:@(4.5) range:NSMakeRange(0, [attributedString length])];
    labelText.attributedText = attributedString;
    [labelText sizeToFit];
    labelText.font = [UIFont fontWithName:@"Verdana-Bold" size:22];
    labelText.textColor = [UIColor blackColor];
    labelText.numberOfLines = 0;
    //时间
    NSDate* date = [NSDate date];
    NSDateFormatter* formatterMonth = [[NSDateFormatter alloc]init];
    NSDateFormatter* formatterDay = [[NSDateFormatter alloc]init];
    NSDateFormatter *formatterYear = [[NSDateFormatter alloc] init];
    [formatterMonth setDateFormat:@"MM"];
    [formatterDay setDateFormat:@"dd"];
    [formatterYear setDateFormat:@"yyyy"];
    NSString* MonthString = [formatterMonth stringFromDate:date];
    NSString* DayString = [formatterDay stringFromDate:date];
    NSString *yearString = [formatterYear stringFromDate:date];
    NSString *timeAll = [NSString stringWithFormat:@"%@/%@/%@", yearString, MonthString, DayString];
    _labelTime = [[UILabel alloc] init];
    _labelTime.text = timeAll;
    _labelTime.font = [UIFont fontWithName:@"Verdana-Bold" size:15];
    [imageViewBiggest addSubview:_labelTime];
    [_labelTime mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(imageViewBiggest).with.offset(-10);
        make.top.equalTo(imageViewBiggest).with.offset(80);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(50);
    }];
    //天气太阳
    UIImageView *imageSun = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"太阳 1.png"]];
    [imageViewBiggest addSubview:imageSun];
    [imageSun mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(_labelTime.mas_left).with.offset(-10);
        make.bottom.equalTo(_labelTime).with.offset(0);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    //时刻
    UILabel *timeFor = [[UILabel alloc] init];
    timeFor.text = @"下午";
    [imageViewBiggest addSubview:timeFor];
    [timeFor mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(_labelTime.mas_right).with.offset(-30);
        make.bottom.equalTo(_labelTime.mas_top).with.offset(20);
        make.width.mas_equalTo(50);
        make.height.mas_offset(40);
    }];
    timeFor.font = [UIFont fontWithName:@"Verdana-Bold" size:18];
    //白2
    UIImageView *imageViewSmallest = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Rectangle 92.png"]];
    [self.view addSubview:imageViewSmallest];
    [imageViewSmallest mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.buttonFeed.mas_right).with.offset(40);
        make.top.equalTo(imageViewBiggest.mas_bottom).with.offset(20);
        make.width.mas_equalTo(180);
        make.height.mas_equalTo(220);
    }];
    UIImageView *stateIcon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"8681687697431_.pic.jpg"]];
    [imageViewSmallest addSubview:stateIcon];
    [stateIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(imageViewSmallest.mas_right).with.offset(-10);
        make.top.equalTo(imageViewSmallest.mas_top).with.offset(30);
        make.width.mas_equalTo(40);
        make.height.mas_equalTo(40);
    }];
    //状态福迪
    UIImageView *foddyState = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"foddyState.png"]];
    [imageViewSmallest addSubview:foddyState];
    [foddyState mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(imageViewSmallest.mas_centerX).multipliedBy(0.9);
        make.centerY.equalTo(imageViewSmallest.mas_centerY).multipliedBy(1.0);
        make.width.mas_equalTo(136);
        make.height.mas_equalTo(160);
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
    
    
    UILabel *label1InMiddle = [[UILabel alloc] init];
    label1InMiddle.text = @"能 量 环";
    [imageViewMiddle addSubview:label1InMiddle];
    [label1InMiddle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imageViewMiddle).with.offset(30);
        make.top.equalTo(imageViewMiddle).with.offset(10);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(40);
    }];
    label1InMiddle.font = [UIFont fontWithName:@"Verdana-Bold" size:20];
    
    UILabel *label2InMiddle = [[UILabel alloc] init];
    label2InMiddle.text = @"主食";
    [imageViewMiddle addSubview:label2InMiddle];
    [label2InMiddle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(imageViewMiddle.mas_right).with.offset(-15);
        make.top.equalTo(imageViewMiddle).with.offset(20);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(30);
    }];
    label2InMiddle.font = [UIFont fontWithName:@"Verdana-Bold" size:17];
    
    UILabel *label3InMiddle = [[UILabel alloc] init];
    label3InMiddle.text = @"肉菜菌蛋奶";
    [imageViewMiddle addSubview:label3InMiddle];
    [label3InMiddle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(imageViewMiddle.mas_right).with.offset(-15);
        make.top.equalTo(label2InMiddle).with.offset(30);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(30);
    }];
    label3InMiddle.font = [UIFont fontWithName:@"Verdana-Bold" size:17];
    UILabel *label4InMiddle = [[UILabel alloc] init];
    label4InMiddle.text = @"零食";
    [imageViewMiddle addSubview:label4InMiddle];
    [label4InMiddle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(imageViewMiddle.mas_right).with.offset(-15);
        make.top.equalTo(label3InMiddle).with.offset(30);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(30);
    }];
    label4InMiddle.font = [UIFont fontWithName:@"Verdana-Bold" size:17];
    UIImageView *imageEnergy = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"nenglianghuan.png"]];
    [imageViewMiddle addSubview:imageEnergy];
    [imageEnergy mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imageViewMiddle).with.offset(30);
        make.top.equalTo(imageViewMiddle).with.offset(60);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(120);
    }];
    UIImageView *imageNums = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"colornums.png"]];
    [imageViewMiddle addSubview:imageNums];
    [imageNums mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(label2InMiddle.mas_left).with.offset(0);
        make.top.equalTo(label2InMiddle).with.offset(0);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(90);
    }];
    //当前能量
    UILabel *energyNow = [[UILabel alloc] init];
    energyNow.text = @"当前能量";
    [imageViewMiddle addSubview:energyNow];
    [energyNow mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(imageViewMiddle.mas_right).with.offset(-15);
        make.top.equalTo(label4InMiddle.mas_bottom).with.offset(0);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(30);
    }];
    energyNow.font = [UIFont fontWithName:@"Verdana-Bold" size:20];
    energyNow.textAlignment = NSTextAlignmentCenter;
    
    //当前能量数字
    UILabel *energyNum = [[UILabel alloc] init];
    energyNum.text = @"1375";
    [imageViewMiddle addSubview:energyNum];
    [energyNum mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(imageViewMiddle.mas_right).with.offset(-15);
        make.top.equalTo(energyNow.mas_bottom).with.offset(0);
        make.width.mas_equalTo(180);
        make.height.mas_equalTo(60);
    }];
    energyNum.font = [UIFont fontWithName:@"Verdana-Bold" size:50];
    energyNum.textAlignment = NSTextAlignmentCenter;
    //右侧福迪
    self.trueFoddy = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"trueFoddy.png"]];
    [self.view addSubview:_trueFoddy];
    [_trueFoddy mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imageViewBiggest.mas_right).with.offset(10);
        make.top.equalTo(labelFeed).with.offset(0);
        make.width.mas_equalTo(350);
        make.height.mas_equalTo(450);
    }];
}
- (void)getFeeding {
    FeedingViewController *feedingController = [[FeedingViewController alloc] init];
    feedingController.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [self presentViewController:feedingController animated:YES completion:nil];
}
- (void)getDressUp {
    DressUpViewController *dressUpController = [[DressUpViewController alloc] init];
    dressUpController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:dressUpController animated:YES completion:nil];
}
- (void)getFriends {
//    FriendsViewController *friendsController  = [[FriendsViewController alloc] init];
//    friendsController.modalPresentationStyle = UIModalPresentationFullScreen;
//    [self presentViewController:friendsController animated:YES completion:nil];
}

- (void)dismissRed {
    [self.buttonRed removeFromSuperview];
}
@end
