//
//  ViewController.m
//  Enum
//
//  Created by koGyoko on 2017/05/26.
//  Copyright © 2017年 koGyoko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//{
//    typedef NS_ENUM(NSInteger,SampleEnum) {
//
//    }
//}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    NSArray *items = @[@1, @2, @3];
    NSLog(@"カウント：%@", @(items.count));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (instancetype)factoryMethodA { return [[[self class] alloc] init]; }
+ (id)factoryMethodB { return [[[self class] alloc] init]; }
@end
