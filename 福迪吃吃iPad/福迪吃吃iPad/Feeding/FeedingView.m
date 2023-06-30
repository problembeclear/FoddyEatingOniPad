//
//  FeedingView.m
//  福迪吃吃iPad
//
//  Created by 张思扬 on 2023/6/22.
//

#import "FeedingView.h"
#import "Masonry.h"

@interface FeedingView ()
@property (strong, nonatomic) UIButton *buttonStaple;
@property (strong, nonatomic) UIButton *buttonMeatToMilk;
@property (strong, nonatomic) UIButton *buttonSnack;
@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong, nonatomic) UITextField *numField;
@property (strong, nonatomic) UIButton *buttonFeed;
@property (strong, nonatomic) UILabel *labelNoti;
@property (strong, nonatomic) UIButton *red1;
@property (strong, nonatomic) UIButton *red2;
@end

@implementation FeedingView
- (void)Init {
    self.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.3];
    
    [self buttonReturn];
    [self setButtons];
    
    [self setImageFoddy];
    [self setScrollView];
    [self setFeedButton];
    [self notificationLabel];
}
//布局左上方返回按钮
- (UIButton*)buttonReturn {
    UIButton *buttonReturn = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonReturn addTarget:self action:@selector(returnBack) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:buttonReturn];
    [buttonReturn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).with.offset(60);
        make.top.equalTo(self).with.offset(80);
        make.width.equalTo(@80);
        make.height.equalTo(@80);
    }];
    [buttonReturn setImage:[UIImage imageNamed:@"转弯 1.png"] forState:UIControlStateNormal];
    [buttonReturn setBackgroundImage:[UIImage imageNamed:@"Ellipse 106.png"] forState:UIControlStateNormal];
    return buttonReturn;
}
//设置滚动图上方的控制按钮
- (void)setButtons {
    _buttonStaple = [UIButton buttonWithType:UIButtonTypeCustom];
    [_buttonStaple setBackgroundImage:[UIImage imageNamed:@"Rectangle 71"] forState:UIControlStateSelected];
    [_buttonStaple setBackgroundImage:[UIImage imageNamed:@"Rectangle 98"] forState:UIControlStateNormal];
    [_buttonStaple setTitle:@"主食" forState:UIControlStateNormal];
    _buttonStaple.titleLabel.font = [UIFont boldSystemFontOfSize:30];
    [_buttonStaple setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [_buttonStaple setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonStaple addTarget:self action:@selector(buttonEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_buttonStaple];
    [_buttonStaple mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.mas_centerX).multipliedBy(1.0);
        make.top.equalTo(self).with.offset(90);
        make.width.mas_equalTo(190);
        make.height.mas_equalTo(60);
    }];
    _red1= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_red1 setBackgroundImage:[UIImage imageNamed:@"Ellipse 27-2.png"] forState:UIControlStateNormal];
    [_red1 setTitle:@"1" forState:UIControlStateNormal];
    [_red1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self addSubview:_red1];
    [_red1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.buttonStaple.mas_right).with.offset(-2);
        make.top.equalTo(self.buttonStaple.mas_top).with.offset(0);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    
    _buttonMeatToMilk = [UIButton buttonWithType:UIButtonTypeCustom];
    [_buttonMeatToMilk setBackgroundImage:[UIImage imageNamed:@"Rectangle 71"] forState:UIControlStateSelected];
    [_buttonMeatToMilk setBackgroundImage:[UIImage imageNamed:@"Rectangle 98"] forState:UIControlStateNormal];
    [_buttonMeatToMilk setTitle:@"肉菜蛋奶" forState:UIControlStateNormal];
    _buttonMeatToMilk.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    [_buttonMeatToMilk setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [_buttonMeatToMilk setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonMeatToMilk addTarget:self action:@selector(buttonEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_buttonMeatToMilk];
    [_buttonMeatToMilk mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.buttonStaple.mas_right).with.offset(20);
        make.top.equalTo(self).with.offset(90);
        make.width.mas_equalTo(190);
        make.height.mas_equalTo(60);
    }];
    
    _red2= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_red2 setBackgroundImage:[UIImage imageNamed:@"Ellipse 27-2.png"] forState:UIControlStateNormal];
    [_red2 setTitle:@"2" forState:UIControlStateNormal];
    [_red2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self addSubview:_red2];
    [_red2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.buttonMeatToMilk.mas_right).with.offset(-2);
        make.top.equalTo(self.buttonMeatToMilk.mas_top).with.offset(0);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    
    
    _buttonSnack = [UIButton buttonWithType:UIButtonTypeCustom];
    [_buttonSnack setBackgroundImage:[UIImage imageNamed:@"Rectangle 71"] forState:UIControlStateSelected];
    [_buttonSnack setBackgroundImage:[UIImage imageNamed:@"Rectangle 98"] forState:UIControlStateNormal];
    [_buttonSnack setTitle:@"零食" forState:UIControlStateNormal];
    _buttonSnack.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    [_buttonSnack setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [_buttonSnack setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonSnack addTarget:self action:@selector(buttonEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_buttonSnack];
    [_buttonSnack mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.buttonMeatToMilk.mas_right).with.offset(20);
        make.top.equalTo(self).with.offset(90);
        make.width.mas_equalTo(190);
        make.height.mas_equalTo(60);
    }];
    
    self.buttonStaple.selected = YES;
    self.buttonMeatToMilk.selected = NO;
    self.buttonSnack.selected = NO;
}
//控制按钮下方消息栏
- (void)notificationLabel {
    self.labelNoti = [[UILabel alloc] init];
    self.labelNoti.backgroundColor = [UIColor whiteColor];
    [self addSubview:_labelNoti];
    [_labelNoti mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.buttonStaple.mas_left).with.offset(0);
        make.right.equalTo(self.buttonSnack.mas_right).with.offset(0);
        make.top.equalTo(self.buttonSnack.mas_bottom).with.offset(10);
        make.bottom.equalTo(self.scrollView.mas_top).with.offset(-10);
    }];
    _labelNoti.text = @"   今日已发布餐食，快来给福迪吃饭吧！";
    _labelNoti.clipsToBounds = YES;
    _labelNoti.layer.cornerRadius = 20;
    _labelNoti.textAlignment = NSTextAlignmentCenter;
    _labelNoti.font = [UIFont boldSystemFontOfSize:20];
    
    UIImageView *imageViewNoti = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"通知 1.png"]];
    [_labelNoti addSubview:imageViewNoti];
    [imageViewNoti mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.labelNoti.mas_left).with.offset(5);
        make.top.equalTo(self.labelNoti.mas_top).with.offset(0);
        make.bottom.equalTo(self.labelNoti.mas_bottom).with.offset(0);
        make.width.mas_equalTo(50);
    }];
    
}
//设置三个按钮控制滚动图的响应事件
- (void)buttonEvent:(UIButton*)button {
    button.selected = YES;
    if ([button isEqual:self.buttonStaple]) {
        self.buttonMeatToMilk.selected = NO;
        self.buttonSnack.selected = NO;
        [self.scrollView setContentOffset:CGPointMake(0, 0)];
        self.buttonStaple.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        self.buttonMeatToMilk.titleLabel.font = [UIFont boldSystemFontOfSize:20];
        self.buttonSnack.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    }
    if ([button isEqual:self.buttonMeatToMilk]) {
        self.buttonStaple.selected = NO;
        self.buttonSnack.selected = NO;
        [self.scrollView setContentOffset:CGPointMake(self.scrollView.frame.size.width, 0)];
        self.buttonStaple.titleLabel.font = [UIFont boldSystemFontOfSize:20];
        self.buttonMeatToMilk.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        self.buttonSnack.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    }
    if ([button isEqual:self.buttonSnack]) {
        self.buttonStaple.selected = NO;
        self.buttonMeatToMilk.selected = NO;
        [self.scrollView setContentOffset:CGPointMake(self.scrollView.frame.size.width * 2, 0)];
        self.buttonStaple.titleLabel.font = [UIFont boldSystemFontOfSize:20];
        self.buttonMeatToMilk.titleLabel.font = [UIFont boldSystemFontOfSize:20];
        self.buttonSnack.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        
    }
    self.numField.text = @"0";
}
//设置左侧的image
- (void)setImageFoddy {
    UIImageView *foddy = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"foddyInFeeding.png"]];
    [self addSubview:foddy];
    [foddy mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).with.offset(30);
        make.top.equalTo(self).with.offset(340);
        make.width.mas_equalTo(280);
        make.height.mas_equalTo(360);
    }];
    UIImageView *shadow = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Ellipse 26.png"]];
    [self addSubview:shadow];
    [shadow mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).with.offset(120);
        make.top.equalTo(foddy.mas_bottom).with.offset(-20);
        make.width.mas_equalTo(300);
        make.height.mas_equalTo(40);
    }];
    UIImageView *table = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"桌子 1.png"]];
    [self addSubview:table];
    [table mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).with.offset(150);
        make.bottom.equalTo(foddy.mas_bottom).with.offset(10);
        make.width.mas_equalTo(240);
        make.height.mas_equalTo(200);
    }];
    UIImageView *vase = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"花瓶 1.png"]];
    [self addSubview:vase];
    [vase mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(table.mas_right).with.offset(60);
        make.bottom.equalTo(table.mas_top).with.offset(80);
        make.width.mas_equalTo(210);
        make.height.mas_equalTo(140);
    }];
}
//设置滚动图及其上的食物按钮
- (void)setScrollView {
    self.scrollView = [[UIScrollView alloc] init];
    [self addSubview:self.scrollView];
    _scrollView.frame = CGRectMake(500, 220, 600, 360);
//    self.scrollView.backgroundColor = [UIColor whiteColor];
    
    self.scrollView.delegate = self;
    _scrollView.showsVerticalScrollIndicator = NO;
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.alwaysBounceVertical = NO;
    _scrollView.alwaysBounceHorizontal = NO;
    _scrollView.pagingEnabled = YES;
    _scrollView.scrollEnabled = YES;
    
    _scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * 3, 0);
    
    
    UIButton *button1InStaple = [UIButton buttonWithType:UIButtonTypeCustom];
    [button1InStaple setBackgroundImage:[UIImage imageNamed:@"Rectangle 74-2"] forState:UIControlStateNormal];
    [button1InStaple setBackgroundImage:[UIImage imageNamed:@"Rectangle 74"] forState:UIControlStateSelected];
    [button1InStaple setImage:[UIImage imageNamed:@"Frame 15.png"] forState:UIControlStateNormal];
    [self.scrollView addSubview:button1InStaple];
    [button1InStaple mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.scrollView.mas_left).with.offset(15);
        make.top.equalTo(self.scrollView.mas_top).with.offset(0);
        make.width.mas_equalTo(180);
        make.height.mas_equalTo(180);
    }];
    [button1InStaple addTarget:self action:@selector(selectFood:) forControlEvents:UIControlEventTouchUpInside];
    
  
    
    UIButton *button1Meat = [UIButton buttonWithType:UIButtonTypeCustom];
    [button1Meat setBackgroundImage:[UIImage imageNamed:@"Rectangle 74-2"] forState:UIControlStateNormal];
    [button1Meat setBackgroundImage:[UIImage imageNamed:@"Rectangle 74"] forState:UIControlStateSelected];
    [button1Meat setImage:[UIImage imageNamed:@"Frame 28.png"] forState:UIControlStateNormal];
    [self.scrollView addSubview:button1Meat];
    [button1Meat mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.scrollView.mas_left).with.offset(15 + 600);
        make.top.equalTo(self.scrollView.mas_top).with.offset(0);
        make.width.mas_equalTo(180);
        make.height.mas_equalTo(180);
    }];
    [button1Meat addTarget:self action:@selector(selectFood:) forControlEvents:UIControlEventTouchUpInside];
 
    
    UIButton *button2Meat = [UIButton buttonWithType:UIButtonTypeCustom];
    [button2Meat setBackgroundImage:[UIImage imageNamed:@"Rectangle 74-2"] forState:UIControlStateNormal];
    [button2Meat setBackgroundImage:[UIImage imageNamed:@"Rectangle 74"] forState:UIControlStateSelected];
    [button2Meat setImage:[UIImage imageNamed:@"Frame 25.png"] forState:UIControlStateNormal];
    [self.scrollView addSubview:button2Meat];
    [button2Meat mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.scrollView.mas_left).with.offset(15 * 2 + 600 + 180);
        make.top.equalTo(self.scrollView.mas_top).with.offset(0);
        make.width.mas_equalTo(180);
        make.height.mas_equalTo(180);
    }];
    [button2Meat addTarget:self action:@selector(selectFood:) forControlEvents:UIControlEventTouchUpInside];
    
 
    
    UIButton *button3Meat = [UIButton buttonWithType:UIButtonTypeCustom];
    [button3Meat setBackgroundImage:[UIImage imageNamed:@"Rectangle 74-2"] forState:UIControlStateNormal];
    [button3Meat setBackgroundImage:[UIImage imageNamed:@"Rectangle 74"] forState:UIControlStateSelected];
    [button3Meat setImage:[UIImage imageNamed:@"Frame 26.png"] forState:UIControlStateNormal];
    [self.scrollView addSubview:button3Meat];
    [button3Meat mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.scrollView.mas_left).with.offset(15 * 3 + 600 + 180 * 2);
        make.top.equalTo(self.scrollView.mas_top).with.offset(0);
        make.width.mas_equalTo(180);
        make.height.mas_equalTo(180);
    }];
    [button3Meat addTarget:self action:@selector(selectFood:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button4Meat = [UIButton buttonWithType:UIButtonTypeCustom];
    [button4Meat setBackgroundImage:[UIImage imageNamed:@"Rectangle 74-2"] forState:UIControlStateNormal];
    [button4Meat setBackgroundImage:[UIImage imageNamed:@"Rectangle 74"] forState:UIControlStateSelected];
    [button4Meat setImage:[UIImage imageNamed:@"Frame 27.png"] forState:UIControlStateNormal];
    [self.scrollView addSubview:button4Meat];
    [button4Meat mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.scrollView.mas_left).with.offset(15 + 600);
        make.top.equalTo(button1Meat.mas_bottom).with.offset(0);
        make.width.mas_equalTo(180);
        make.height.mas_equalTo(180);
    }];
    [button4Meat addTarget:self action:@selector(selectFood:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button5Meat = [UIButton buttonWithType:UIButtonTypeCustom];
    [button5Meat setBackgroundImage:[UIImage imageNamed:@"Rectangle 74-2"] forState:UIControlStateNormal];
    [button5Meat setBackgroundImage:[UIImage imageNamed:@"Rectangle 74"] forState:UIControlStateSelected];
    [button5Meat setImage:[UIImage imageNamed:@"Frame 29.png"] forState:UIControlStateNormal];
    [self.scrollView addSubview:button5Meat];
    [button5Meat mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.scrollView.mas_left).with.offset(15 * 2 + 600 + 180);
        make.top.equalTo(button2Meat.mas_bottom).with.offset(0);
        make.width.mas_equalTo(180);
        make.height.mas_equalTo(180);
    }];
    [button5Meat addTarget:self action:@selector(selectFood:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button1Snack = [UIButton buttonWithType:UIButtonTypeCustom];
    [button1Snack setBackgroundImage:[UIImage imageNamed:@"Rectangle 74-2"] forState:UIControlStateNormal];
    [button1Snack setBackgroundImage:[UIImage imageNamed:@"Rectangle 74"] forState:UIControlStateSelected];
    [button1Snack setImage:[UIImage imageNamed:@"Frame 21.png"] forState:UIControlStateNormal];
    [self.scrollView addSubview:button1Snack];
    [button1Snack mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.scrollView.mas_left).with.offset(15 + 600 * 2);
        make.top.equalTo(self.scrollView.mas_top).with.offset(0);
        make.width.mas_equalTo(180);
        make.height.mas_equalTo(180);
    }];
    [button1Snack addTarget:self action:@selector(selectFood:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button2Snack = [UIButton buttonWithType:UIButtonTypeCustom];
    [button2Snack setBackgroundImage:[UIImage imageNamed:@"Rectangle 74-2"] forState:UIControlStateNormal];
    [button2Snack setBackgroundImage:[UIImage imageNamed:@"Rectangle 74"] forState:UIControlStateSelected];
    [button2Snack setImage:[UIImage imageNamed:@"Frame 22.png"] forState:UIControlStateNormal];
    [self.scrollView addSubview:button2Snack];
    [button2Snack mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.scrollView.mas_left).with.offset(15 * 2 + 600 * 2 + 180);
        make.top.equalTo(self.scrollView.mas_top).with.offset(0);
        make.width.mas_equalTo(180);
        make.height.mas_equalTo(180);
    }];
    [button2Snack addTarget:self action:@selector(selectFood:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button3Snack = [UIButton buttonWithType:UIButtonTypeCustom];
    [button3Snack setBackgroundImage:[UIImage imageNamed:@"Rectangle 74-2"] forState:UIControlStateNormal];
    [button3Snack setBackgroundImage:[UIImage imageNamed:@"Rectangle 74"] forState:UIControlStateSelected];
    [button3Snack setImage:[UIImage imageNamed:@"Frame 23.png"] forState:UIControlStateNormal];
    [self.scrollView addSubview:button3Snack];
    [button3Snack mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.scrollView.mas_left).with.offset(15 * 3 + 600 * 2 + 180 * 2);
        make.top.equalTo(self.scrollView.mas_top).with.offset(0);
        make.width.mas_equalTo(180);
        make.height.mas_equalTo(180);
    }];
    [button3Snack addTarget:self action:@selector(selectFood:) forControlEvents:UIControlEventTouchUpInside];
}
//点击食物图标或喂食按钮时响应
- (void)selectFood:(UIButton*)button {
    if ([button isEqual:_buttonFeed]) {
        self.numField.text = @"0";
        [self.red1 removeFromSuperview];
        [self.red2 removeFromSuperview];
        [[NSNotificationCenter defaultCenter] postNotificationName:@"removeRed" object:nil];
        
        
        
        [[NSNotificationCenter defaultCenter] postNotificationName:@"alertForUs" object:nil];
        
    } else {
        button.selected = !button.selected;
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    if (scrollView.contentOffset.x == 0) {
        [self buttonEvent:self.buttonStaple];
    }
    if (scrollView.contentOffset.x == _scrollView.frame.size.width) {
        [self buttonEvent:self.buttonMeatToMilk];
    }
    if (scrollView.contentOffset.x == _scrollView.frame.size.width * 2) {
        [self buttonEvent:self.buttonSnack];
    }
}
//设置加减号按钮和喂食按钮
- (void)setFeedButton {
    UIButton *buttonSubtraction = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonSubtraction.tag = 222;
    [buttonSubtraction setBackgroundImage:[UIImage imageNamed:@"Ellipse 25.png"] forState:UIControlStateNormal];
    [buttonSubtraction setTitle:@"-" forState:UIControlStateNormal];
    buttonSubtraction.titleLabel.font = [UIFont boldSystemFontOfSize:30];
    [buttonSubtraction setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self addSubview:buttonSubtraction];
    [buttonSubtraction mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.buttonStaple.mas_left).with.offset(20);
        make.top.equalTo(self.scrollView.mas_bottom).with.offset(70);
        make.width.equalTo(@40);
        make.height.equalTo(@40);
    }];
    [buttonSubtraction addTarget:self action:@selector(addOrSubtract:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *buttonAddition = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonAddition.tag = 333;
    [buttonAddition setBackgroundImage:[UIImage imageNamed:@"Ellipse 25.png"] forState:UIControlStateNormal];
    [buttonAddition setTitle:@"+" forState:UIControlStateNormal];
    buttonAddition.titleLabel.font = [UIFont boldSystemFontOfSize:30];
    [buttonAddition setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self addSubview:buttonAddition];
    [buttonAddition mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.buttonStaple.mas_left).with.offset(160);
        make.top.equalTo(self.scrollView.mas_bottom).with.offset(70);
        make.width.equalTo(@40);
        make.height.equalTo(@40);
    }];
    [buttonAddition addTarget:self action:@selector(addOrSubtract:) forControlEvents:UIControlEventTouchUpInside];
    
    _numField = [[UITextField alloc] init];
    _numField.text = @"0";
    _numField.backgroundColor = [UIColor whiteColor];
    [self addSubview:_numField];
    [_numField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(buttonSubtraction.mas_right).with.offset(5);
        make.right.equalTo(buttonAddition.mas_left).with.offset(-5);
        make.top.equalTo(buttonAddition.mas_top).with.offset(0);
        make.height.mas_equalTo(buttonAddition.mas_height);
    }];
    _numField.textAlignment = NSTextAlignmentCenter;
    _numField.clipsToBounds = YES;
    _numField.layer.cornerRadius = 20;
    _numField.font = [UIFont boldSystemFontOfSize:25];
    
    _buttonFeed = [UIButton buttonWithType:UIButtonTypeRoundedRect];;
    [_buttonFeed setBackgroundImage:[UIImage imageNamed:@"Rectangle 96.png"] forState:UIControlStateNormal];
    [_buttonFeed setTitle:@"喂食" forState:UIControlStateNormal];
    _buttonFeed.titleLabel.font = [UIFont boldSystemFontOfSize:30];
    [_buttonFeed setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self addSubview:_buttonFeed];
    [_buttonFeed mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(buttonAddition.mas_right).with.offset(100);
        make.top.equalTo(buttonAddition.mas_top).with.offset(0);
        make.width.equalTo(@200);
        make.height.equalTo(@60);
    }];
    _buttonFeed.layer.cornerRadius = 30;
    [_buttonFeed addTarget:self action:@selector(selectFood:) forControlEvents:UIControlEventTouchUpInside];
}
//按下加减号按钮时响应
- (void)addOrSubtract:(UIButton*)button {
    NSString *stringField = self.numField.text;
    if (button.tag == 222) {
        if ([self.numField.text isEqualToString:@"0"]) {
            
        } else {
            int newText = [stringField intValue] - 1;
            self.numField.text = [NSString stringWithFormat:@"%d", newText];
        }
    }
    if (button.tag == 333) {
        int newText = [stringField intValue] + 1;
        self.numField.text = [NSString stringWithFormat:@"%d", newText];
    }
}
//左上角返回按钮
- (void)returnBack {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"returnFromFeeding" object:nil];
}
@end
