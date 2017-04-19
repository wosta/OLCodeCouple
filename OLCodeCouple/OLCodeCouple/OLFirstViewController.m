//
//  OLFirstViewController.m
//  OLCodeCouple
//
//  Created by  olive on 2017/4/19.
//  Copyright © 2017年  olive. All rights reserved.
//

#import "OLFirstViewController.h"
#import "OLPerson.h"

@interface OLFirstViewController ()

@end

@implementation OLFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];



    // 方式一：别人接受项目的时候，会耗费大量的时间去查看.m文件，如果.m文件够大的话，会非常头疼
//    OLPerson *person = [[OLPerson alloc] init];
//    [person drink];
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
