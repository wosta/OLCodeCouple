//
//  OLThirdViewController.m
//  OLCodeCouple
//
//  Created by  olive on 2017/4/19.
//  Copyright © 2017年  olive. All rights reserved.
//

#import "OLThirdViewController.h"
#import "OLPerson.h"
#import "OLCup.h"

@interface OLThirdViewController ()

@end

@implementation OLThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

    /* 方式三：
     方式二中，Person类在对Cup产生依赖的同时，也承担了cup随时被外部修改的风险。当然做直观的做法是将Cup类作为ReadOnly的property，同时提供一个对外的setter：
     有人可能会问，这和上面的做法有什么区别，不一样都有读写的接口吗？最大的区别是增加了检查和干扰的入口。

     当Debug的时候，经常需要检查某个Propery到底是被谁修改了，Setter中设置一个断点调试起来方便不少。同时，我们还可以使用Xcode的Caller机制，查看当前Setter都被那些外部类调用了，分析类与类之间的关联是很有帮助。

     Person.m中Setter方法还提供了我们拓展功能的入口，比如我们需要在Setter中增加多线程同步Lock，当Person.m中的其他方法在使用Cup时，Setter必须等待完成才能执行。又比如我们可以在Setter中实现Copy On Write机制：
     
     - (void)setCup:(OLCup *)cup {
     OLCup* anotherCup = [OLCup copy];
     _cup = anotherCup;
     //    这样，Person类就可以避免和外部类共享同一个Cup，杜绝使用同一个水杯的卫生问题 ;)
     //    总之，单独的Setter方法让我们对代码有更大的掌控能力，也为后续接手维护你代码的同学带来了方便，利己利人。
     }
     */
//    OLPerson *person = [[OLPerson alloc] init];
//    OLCup *cup = [[OLCup alloc] init];
//    [person setCup:cup];
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
