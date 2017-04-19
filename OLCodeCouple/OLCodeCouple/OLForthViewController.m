//
//  OLForthViewController.m
//  OLCodeCouple
//
//  Created by  olive on 2017/4/19.
//  Copyright © 2017年  olive. All rights reserved.
//

#import "OLForthViewController.h"
#import "OLCup.h"
#import "OLPerson.h"

@interface OLForthViewController ()

@end

@implementation OLForthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

    /*
     方式四：init 注入
     使用带Setter的Property虽然看上去好了不少，但Setter方法可以被任意外部类随时随刻调用，对于Person.m中使用Cup的方法来说，多少有些不安心，万一用着用着被别人改了呢？

     为了避免被随意修改，我们可以采用init注入的方式，Objective C中的designated initializer正是为此而生
     去掉Property，将Cup的设置放入init方法中，这样Person类对外就只提供一次机会来设置Cup，init之后，外部类就没有其他机会来修改Cup了。

     这是使用最多，也是比较推荐的方式。只在对象被创建的时候，去建立与其他对象的关系，把可变性降低到一定程度。那这种方式是否也有什么缺点呢？

     通过init的方式设置cup，杜绝了外部因素的影响，但如果内部持有了cup对象，那么内部的函数调用依然可以通过各种姿势与Cup类产生耦合，比如：
     
     Person内部的方法可以通过Cup所有对外的接口来产生耦合，此时我们对于两个类之间的耦合，就主要靠对Cup.h头文件来解读了。如果Cup类设计合理，头文件结构清晰的话，这其实不算太糟糕的场景。那还有没有其他方式呢？
     */

//    OLPerson *person = [[OLPerson alloc] initWithCup:[[OLCup alloc]init]];
//    [person drink];
//    [person drinkMilk];
//    [person drinkWater];

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
