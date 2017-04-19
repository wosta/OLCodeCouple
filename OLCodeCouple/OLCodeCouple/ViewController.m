//
//  ViewController.m
//  OLCodeCouple
//
//  Created by  olive on 2017/4/19.
//  Copyright © 2017年  olive. All rights reserved.
//

#import "ViewController.h"
#import "OLCup.h"
#import "OLPerson.h"
#import "OLFirstViewController.h"
#import "OLSecendViewController.h"
#import "OLThirdViewController.h"
#import "OLForthViewController.h"
#import "OLFifthViewController.h"
#import "OLSixthViewController.h"
#import "OLSeventhViewController.h"
#import "OLEighthViewController.h"
#import "OLNinthViewController.h"

static NSString  *ViewControllerReusableCellWithIdentifierID = @"ViewControllerReusableCellWithIdentifierID";
static NSInteger cellNumber = 9;

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
/** tableView */
@property (nonatomic, strong) UITableView *tableView;
/** dataArray */
@property (nonatomic, strong) NSArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    self.tableView = ({
        UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
        [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ViewControllerReusableCellWithIdentifierID];
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.tableFooterView = [[UIView alloc] init];
        tableView;
    });
    [self.view addSubview:self.tableView];

}


#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return cellNumber;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ViewControllerReusableCellWithIdentifierID forIndexPath:indexPath];

    [self configureCell:cell forRowAtIndexPath:indexPath];

    return cell;
}

- (void)configureCell:(UITableViewCell *)cell
    forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.textLabel.text = self.dataArray[indexPath.row];
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        OLFirstViewController *first = [[OLFirstViewController alloc] init];
        [self.navigationController pushViewController:first animated:YES];
    }else if (indexPath.row == 1) {
        OLSecendViewController *vc = [[OLSecendViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 2) {
        OLThirdViewController *vc = [[OLThirdViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 3) {
        OLForthViewController *vc = [[OLForthViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 4) {
        OLFifthViewController *vc = [[OLFifthViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 5) {
        OLSixthViewController *vc = [[OLSixthViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 6) {
        OLSeventhViewController *vc = [[OLSeventhViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 7) {
        OLEighthViewController *vc = [[OLEighthViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 8) {
        OLNinthViewController *vc = [[OLNinthViewController  alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 9) {

    }else if (indexPath.row == 10) {

    }
}

- (NSArray *)dataArray {
    if (!_dataArray) {
        _dataArray = [[NSArray alloc] initWithObjects:@"方式一",@"方式二",@"方式三",@"方式四",@"方式五",@"方式六",@"方式七",@"方式八",@"方式九", nil];
    }
    return _dataArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
