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
    
    //標準の配列
    NSArray *array = [[NSArray alloc] initWithObjects:@"aaa", @"bbb", @"ccc", nil];
    id element = [array objectAtIndex:0];
    //＠
    NSArray *array_succinctness = @[@"lu", @"da", @"shi", @YES, @123];
    NSLog(@"カウント：%@", @(array_succinctness.count));
    for (int i = 0; i < array_succinctness.count; i++)
    {
        NSLog(@"%@", array_succinctness[i]);
    }
    
    
    //標準のDictionary
    NSDictionary *dictionay = [NSDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1", @"value2", @"key2", nil];
    id value = [dictionay objectForKey:@"key1"];
    NSLog(@"key1 => %@", value);
    //＠
    NSDictionary *dictionary = @{
                                 @"key0" : @"value0",
                                 @"key1" : @"value1",
                                 @"key2" : @"value2"
                                 };
    NSLog(@"key2 => %@", dictionary[@"key2"]);
    
    //標準のNumber
    NSNumber *num_int = [NSNumber numberWithInt:10];
    NSNumber *num_float = [NSNumber numberWithFloat:8.888];
    //＠
    NSNumber *a = @12;
    NSNumber *b = @23.24;
    NSNumber *c = @('a');//aのASCIIコード
    //＠のString
    NSString *string = @"iOS Japan";
    NSMutableString *mutString = @"iOS Japan".mutableCopy;//変更的string
    
    [mutString insertString:@"hello," atIndex:0];
    NSLog(@"%@",mutString);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (instancetype)factoryMethodA { return [[[self class] alloc] init]; }
+ (id)factoryMethodB { return [[[self class] alloc] init]; }
@end
