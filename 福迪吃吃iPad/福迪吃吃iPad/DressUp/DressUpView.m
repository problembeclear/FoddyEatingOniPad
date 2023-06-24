//
//  DressUpView.m
//  福迪吃吃iPad
//
//  Created by 张思扬 on 2023/6/22.
//

#import "DressUpView.h"
#import "Masonry.h"
@implementation DressUpView

- (void)Init {
    self.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.3];
    [self buttonReturn];
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

//左上角返回按钮
- (void)returnBack {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"returnFromDressUp" object:nil];
}
@end
