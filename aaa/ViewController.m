//
//  ViewController.m
//  aaa
//
//  Created by mac on 16/5/20.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString * str = @"9999.99万";
    UIImage * image = [UIImage imageNamed:@"dianzan_heart"];
    UIFont * font = [UIFont systemFontOfSize:10];
    CGSize size = [str sizeWithAttributes:@{NSFontAttributeName : font}];
    
    UIButton * btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(100, 100, MAX(image.size.width, size.width), (image.size.height+2+size.height));
    btn1.backgroundColor = [UIColor orangeColor];
    [btn1 setTitle:str forState:UIControlStateNormal];
    btn1.titleLabel.font = font;
//    btn1.titleLabel.alpha = 0.1;
    [btn1 setImage:image forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn1.imageEdgeInsets = UIEdgeInsetsMake((image.size.height - CGRectGetHeight(btn1.frame)),(CGRectGetWidth(btn1.frame) - image.size.width)/2.0, 0, (CGRectGetWidth(btn1.frame) - image.size.width)/2.0);
    btn1.titleEdgeInsets = UIEdgeInsetsMake(image.size.height, -image.size.width, 0, 0);

    [self.view addSubview:btn1];
    
    
    NSString * nameStr = @"姓名姓名";
    NSString * timeStr = @"时间时间时时间时间时";
    NSString * str1 = [NSString stringWithFormat:@"%@\n%@",nameStr,timeStr];
    UIImage * image1 = [UIImage imageNamed:@"dianzan_heart"];
    UIFont * font1 = [UIFont systemFontOfSize:15];
    
    CGRect size1 = [nameStr boundingRectWithSize:CGSizeMake(200, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading | NSStringDrawingTruncatesLastVisibleLine attributes:@{NSFontAttributeName : font1} context:nil];
    CGRect stringRect1 = [str1 boundingRectWithSize:CGSizeMake(200, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading | NSStringDrawingTruncatesLastVisibleLine attributes:@{NSFontAttributeName : font1} context:nil];
    NSLog(@"%f",stringRect1.size.height);
    
    
    UIButton * btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.titleLabel.numberOfLines = 2;
    btn2.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
    btn2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    btn2.frame = CGRectMake(10, 210, (stringRect1.size.width+image1.size.width + 20), stringRect1.size.height);
    btn2.backgroundColor = [UIColor orangeColor];
    [btn2 setTitle:str1 forState:UIControlStateNormal];
    btn2.titleLabel.font = font1;
    [btn2 setImage:image1 forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn2.titleEdgeInsets = UIEdgeInsetsMake(0, -image1.size.width, 0, 0);
    btn2.imageEdgeInsets = UIEdgeInsetsMake(0,size1.size.width + 20, 0, 0);
    [self.view addSubview:btn2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
