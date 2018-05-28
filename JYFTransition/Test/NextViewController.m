//
//  NextViewController.m
//  JYFTransition
//
//  Created by jiangyunfeng on 2018/5/28.
//  Copyright © 2018年 jiangyunfeng. All rights reserved.
//

#import "NextViewController.h"
#import "UINavigationController+Animation.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    self.navigationItem.title = @"二级页面";
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(popController)];
    self.navigationItem.leftBarButtonItem = backItem;
    
    // Do any additional setup after loading the view.
}

- (void)popController {
    [self.navigationController popViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
