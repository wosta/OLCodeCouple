//
//  OLFifthViewController.m
//  OLCodeCouple
//
//  Created by  olive on 2017/4/19.
//  Copyright © 2017年  olive. All rights reserved.
//

#import "OLFifthViewController.h"
#import "OLPerson.h"
#import "OLCup.h"

@interface OLFifthViewController ()

@end

@implementation OLFifthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

    /*
     方式五：parameter 注入
     用Property持有的方式，在Person对象的整个生命周期内，耦合的可能性一直存在，原因在于Property对于.m文件来说是全局可见的。我们可以用另一种方式让耦合只发生在单个方法内部，即parameter injection：
     
     这种方式的好处在于：Person和Cup的耦合只发生在drink函数的内部，一旦函数调用结束，Person和Cup之间就结束了依赖关系。从时间和空间的跨度上来说，这种方式比持有Property风险更小。

     可要是在Person中存在多处Cup的依赖，比如有drinkWater,drinkMilk,drinkCoffee等等，反而又不如Property直观方便了。
     */
//    OLPerson *person = [[OLPerson alloc] init];
//    [person drink:[[OLCup alloc] init]];

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
