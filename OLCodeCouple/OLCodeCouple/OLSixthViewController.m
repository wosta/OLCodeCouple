//
//  OLSixthViewController.m
//  OLCodeCouple
//
//  Created by  olive on 2017/4/19.
//  Copyright © 2017年  olive. All rights reserved.
//

#import "OLSixthViewController.h"
#import "OLPerson.h"
#import "OLCup.h"

@interface OLSixthViewController ()

@end

@implementation OLSixthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

    /*
     方式六：单例引用
     单例的优劣有很多优秀的技术文章分析过了，Peak君只强调其中一点，也是平时review代码和Debug发现最多的问题缘由：单例中的状态共享。

     上面的例子中，我们可以把Cup做成单例，代码如下：
     
     这种方式产生的耦合不但和方式一同样隐蔽，而且是最容易导致代码降级的，随着版本的不停迭代，我们很有可能会得到下面的一个类关联图：
     
     所有的person类都关联到一个cup类，很显然这是有问题的。每个人的口味都不一样


     所有的对象都依赖于同一个对象的状态，所有的对象都对这个对象的状态拥有读写权限，最后的结果很有可能是到处打补丁修Bug，按下葫芦浮起瓢。

     使用单例类似的场景很常见，比如我们在单例中持有某个用户的信息，在用户登出之后，忘记清除之前用户的信息就会导致奇怪的bug，而且单例一旦零散的分布在项目的各个角落，要逐一处理十分困难。
     */
//    OLPerson *person = [[OLPerson alloc] init];
//    [person drink:nil];

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
