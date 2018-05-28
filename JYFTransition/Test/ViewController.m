//
//  ViewController.m
//  JYFTransition
//
//  Created by jiangyunfeng on 2018/5/28.
//  Copyright © 2018年 jiangyunfeng. All rights reserved.
//

#import "ViewController.h"
#import "JYFAnimation.h"
#import "TableViewCell.h"
#import "UINavigationController+Animation.h"
#import "NextViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *dataSource;
@property (strong, nonatomic) NSMutableArray *subDataSource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"转场动画";
    _dataSource = [NSMutableArray arrayWithObjects:@"淡入淡出", @"推挤", @"揭开", @"覆盖", @"立方体", @"吮吸", @"翻转", @"翻页", @"反翻页", @"开镜头", @"关镜头", @"波纹", nil];
    
    _subDataSource = [NSMutableArray arrayWithObjects:@"AnimationTypeFade", @"AnimationTypePush", @"AnimationTypeReveal", @"AnimationTypeMoveIn", @"AnimationTypeCube", @"AnimationTypeSuckEffect", @"AnimationTypeOglFlip", @"AnimationTypePageCurl", @"AnimationTypePageUnCurl", @"AnimationTypeCameraOpen", @"AnimationTypeCameraClose", @"AnimationTypeRippleEffect", nil];
    
    // Do any additional setup after loading the view, typically from a nib.
    [self setTableView];
    
}

- (void)setTableView {
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-64) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    [_tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"TableViewCell"];
    _tableView.tableFooterView = [[UIView alloc] init];
    [self.view addSubview:_tableView];

}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];

    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    [cell setTitle:_dataSource[indexPath.row] subTitle:_subDataSource[indexPath.row]];
    return cell;
}


#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NextViewController *next = [[NextViewController alloc] init];
    NSString *typeStr = _subDataSource[indexPath.row];
    AnimationType type = [self typeFromString:typeStr];
    [self.navigationController pushViewController:next animationType:type direction:AnimationDirectionLeft];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (AnimationType)typeFromString:(NSString *)typeStr {
    if ([typeStr isEqualToString:@"AnimationTypeFade"]) {
        return AnimationTypeFade;
    } else if ([typeStr isEqualToString:@"AnimationTypePush"]) {
        return AnimationTypePush;
    } else if ([typeStr isEqualToString:@"AnimationTypeReveal"]) {
        return AnimationTypeReveal;
    } else if ([typeStr isEqualToString:@"AnimationTypeMoveIn"]) {
        return AnimationTypeMoveIn;
    } else if ([typeStr isEqualToString:@"AnimationTypeCube"]) {
        return AnimationTypeCube;
    } else if ([typeStr isEqualToString:@"AnimationTypeSuckEffect"]) {
        return AnimationTypeSuckEffect;
    } else if ([typeStr isEqualToString:@"AnimationTypeOglFlip"]) {
        return AnimationTypeOglFlip;
    } else if ([typeStr isEqualToString:@"AnimationTypePageCurl"]) {
        return AnimationTypePageCurl;
    } else if ([typeStr isEqualToString:@"AnimationTypePageUnCurl"]) {
        return AnimationTypePageUnCurl;
    } else if ([typeStr isEqualToString:@"AnimationTypeCameraOpen"]) {
        return AnimationTypeCameraOpen;
    } else if ([typeStr isEqualToString:@"AnimationTypeCameraClose"]) {
        return AnimationTypeCameraClose;
    } else if ([typeStr isEqualToString:@"AnimationTypeRippleEffect"]) {
        return AnimationTypeRippleEffect;
    } else {
        return AnimationTypeFade;
    }
}

@end
