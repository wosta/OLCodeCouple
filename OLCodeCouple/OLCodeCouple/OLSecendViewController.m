//
//  OLSecendViewController.m
//  OLCodeCouple
//
//  Created by  olive on 2017/4/19.
//  Copyright © 2017年  olive. All rights reserved.
//

#import "OLSecendViewController.h"
#import "OLPerson.h"
#import "OLCup.h"

@interface OLSecendViewController ()

@end

@implementation OLSecendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

    /* 方式二：person类中的cup对方开放，相对于方式一：这样他人直接在.h文件中就可以一目了然的知道person类与其他类的耦合关系。但是有个弊端，别人会从外部直接修改关联的类。
     不知道大家有没有好奇过，为什么在Objective C中会有.h文件的存在，为什么不像Java，Swift一样一个文件代表一个类？使用.h文件有利有弊。
     .h文件最大的意义在于将声明和实现相隔离。声明是告诉外部我支持哪些功能，实现是支撑这些功能背后的代码逻辑。在我们阅读一个类的.h文件的时候，它最主要的作用是透露两个信息：
     •	我（Person类）依赖了哪些外部元素
     •	我（Person类）提供哪些接口供外部调用
     所以.h文件应该是我们代码耦合的关键所在，当我们犹豫一个类的Property要不要放到.h文件中去声明时，要思考这个Property是不是必须暴露给外部。一旦暴露到.h文件中，就增加了依赖和耦合的几率。有时候Review代码，只要看.h文件是否清晰，就大概能猜测这个类设计者的水平。
     当我们把Cup类做为Person的Property声明时，就表明Person与Cup之间存在必要的依赖，我们把这种依赖放到头文件中来，起到一目了然的效果。这比方式一清晰了不少，但有另一个问题，Cup暴露出去以后，外部元素可以随意修改，当内部执行drink的时候，可能另一个线程将cup置空了，影响正常的业务流程。
     */
//    OLPerson *person = [[OLPerson alloc] init];
//    OLCup *cup = [[OLCup alloc] init];
//    person.cup = cup;
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
