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
@end

@implementation FeedingView
- (void)Init {
    self.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.3];
    
    [self buttonReturn];
    [self setButtons];
    [self setImageFoddy];
}
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
        make.top.equalTo(self).with.offset(100);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(80);
    }];
    
    _buttonMeatToMilk = [UIButton buttonWithType:UIButtonTypeCustom];
    [_buttonMeatToMilk setBackgroundImage:[UIImage imageNamed:@"Rectangle 71"] forState:UIControlStateSelected];
    [_buttonMeatToMilk setBackgroundImage:[UIImage imageNamed:@"Rectangle 98"] forState:UIControlStateNormal];
    [_buttonMeatToMilk setTitle:@"肉菜蛋奶" forState:UIControlStateNormal];
    _buttonMeatToMilk.titleLabel.font = [UIFont boldSystemFontOfSize:30];
    [_buttonMeatToMilk setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [_buttonMeatToMilk setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonMeatToMilk addTarget:self action:@selector(buttonEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_buttonMeatToMilk];
    [_buttonMeatToMilk mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.buttonStaple.mas_right).with.offset(10);
        make.top.equalTo(self).with.offset(100);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(80);
    }];
    
    _buttonSnack = [UIButton buttonWithType:UIButtonTypeCustom];
    [_buttonSnack setBackgroundImage:[UIImage imageNamed:@"Rectangle 71"] forState:UIControlStateSelected];
    [_buttonSnack setBackgroundImage:[UIImage imageNamed:@"Rectangle 98"] forState:UIControlStateNormal];
    [_buttonSnack setTitle:@"零食" forState:UIControlStateNormal];
    _buttonSnack.titleLabel.font = [UIFont boldSystemFontOfSize:30];
    [_buttonSnack setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [_buttonSnack setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonSnack addTarget:self action:@selector(buttonEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_buttonSnack];
    [_buttonSnack mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.buttonMeatToMilk.mas_right).with.offset(10);
        make.top.equalTo(self).with.offset(100);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(80);
    }];
    
    self.buttonStaple.selected = YES;
    self.buttonMeatToMilk.selected = NO;
    self.buttonSnack.selected = NO;
}
- (void)buttonEvent:(UIButton*)button {
    button.selected = YES;
    if ([button isEqual:self.buttonStaple]) {
        self.buttonMeatToMilk.selected = NO;
        self.buttonSnack.selected = NO;

    }
    if ([button isEqual:self.buttonMeatToMilk]) {
        self.buttonStaple.selected = NO;
        self.buttonSnack.selected = NO;

    }
    if ([button isEqual:self.buttonSnack]) {
        self.buttonStaple.selected = NO;
        self.buttonMeatToMilk.selected = NO;

    }
}
- (void)setImageFoddy {
    UIImageView *foddy = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"foddyInFeeding.png"]];
    [self addSubview:foddy];
    [foddy mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).with.offset(60);
        make.top.equalTo(self).with.offset(340);
        make.width.mas_equalTo(280);
        make.height.mas_equalTo(360);
    }];
}
- (void)setScrollView {
    
}
- (void)returnBack {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"returnFromFeeding" object:nil];
}
@end
