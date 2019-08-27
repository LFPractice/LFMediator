//
//  MainViewController.m
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import "MainViewController.h"
#import "LFRuntimeTestMediator.h"
#import "LFBlockTestMediator.h"
#import "LFProtocolTestMediator.h"
@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation MainViewController
#pragma mark - life circle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self createUI];
}
#pragma mark - target-action
#pragma mark - assist method
#pragma mark - delegate
#pragma mark ------ UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellName = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
    }
    cell.textLabel.text = [self titlesArray][indexPath.row];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}
#pragma mark ------ UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
        {
            // runtime
            [[LFRuntimeTestMediator new] gotoRuntimeVCDetailWithName:[self titlesArray][indexPath.row] callBack:^{
                NSLog(@"%@",[self titlesArray][indexPath.row]);
            }];
            break;
        }
        case 1:
        {
            // block
            [[LFBlockTestMediator sharedInstance]gotoBlockViewDetailWithName:[self titlesArray][indexPath.row] callBack:^{
                NSLog(@"%@",[self titlesArray][indexPath.row]);
            }];
            break;
        }
        case 2:
        {
            // protocol
            id<LFProtocolTestProtocol> service = [[LFProtocolTestMediator sharedInstance] getObject:@protocol(LFProtocolTestProtocol)];
            [service gotoProtocolViewDetailWithName:[self titlesArray][indexPath.row] callBack:^{
                NSLog(@"%@",[self titlesArray][indexPath.row]);
            }];
            break;
        }
            
        default:
            break;
    }
}
#pragma mark - private
- (void)createUI {
    [self.view addSubview:self.tableView];
}
#pragma mark - lazy load
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    }
    return _tableView;
}
- (NSArray *)titlesArray {
    return @[@"以runtime方式解耦",
             @"以block注册方式解耦",
             @"以protocol注册解耦"];
}


@end
