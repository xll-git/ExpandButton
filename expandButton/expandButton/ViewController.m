//
//  ViewController.m
//  expandButton
//
//  Created by OKNI-IOS on 2022/3/5.
//

#import "ViewController.h"
#import "ExpandButton.h"
#import "UIButton+TouchArea.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ExpandButton *btn = [[ExpandButton alloc]initWithFrame:CGRectMake(100, 100, 50, 50)];
    btn.expandWidth = 20;
    [btn setTitle:@"按钮1" forState:UIControlStateNormal];
    btn.backgroundColor = UIColor.blackColor;
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btn_Click:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn2 = [[UIButton alloc]initWithFrame:CGRectMake(200, 100, 50, 50)];
    [btn2 setTitle:@"按钮2" forState:UIControlStateNormal];
    btn2.backgroundColor = [UIColor blackColor];
    [self.view addSubview:btn2];
    [btn2 setExpandAreaWithEdgeInsets:UIEdgeInsetsMake(20, 20, 20, 20)];
    [btn2 addTarget:self action:@selector(btn_Click:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btn_Click:(UIButton *)btn {
    NSLog(@"点击了 = %@", btn.currentTitle);
}
@end
