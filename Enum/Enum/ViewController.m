//
//  ViewController.m
//  Enum
//
//  Created by koGyoko on 2017/05/26.
//  Copyright © 2017年 koGyoko. All rights reserved.
//

#import "ViewController.h"

const NSString *word = @"hello, world";

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
    int *aa = NULL;
    //＠のString
    NSString *string = @"iOS Japan";
    NSMutableString *mutString = @"iOS Japan".mutableCopy;//変更的string
    
    [mutString insertString:@"hello," atIndex:0];
    NSLog(@"%@",mutString);
    
#define MARGIN 10 + 20
    NSLog(@"%i",MARGIN * 2);//イコール10+20*2=50
    
#define MY_DECLARE(type,name)\
type my_##name;
    MY_DECLARE(int,a) // 实际上宏展开为：int my_a;
    my_a=88;
    printf("%d\n", my_a);
    
#define PI 3.14159 //常量宏
    const double Pi=3.14159; //此时并未将Pi放入ROM中 ......
    NSLog(@"...1 %f",Pi);
    double i=Pi; //此时为Pi分配内存，以后不再分配！
    NSLog(@"...2 %f",i);
    double I=PI; //编译期间进行宏替换，分配内存
    NSLog(@"...3 %f",I);
    double j=Pi; //没有内存分配
    NSLog(@"...4 %f",j);
    double J=PI; //再进行宏替换，又一次分配内存！
    NSLog(@"...1 %f",J);
    
    int vv = 12;
    [self changeValue:&vv count:1];
    NSLog(@"count1 is %i",vv);
    [self changeValue:&vv count:4];
    NSLog(@"count2 is %i",vv);
    [self changeValue:&vv count:2];
    NSLog(@"count3 is %i",vv);
    
    
    
    // 以可变的NSMutableArray作为对象源
    NSMutableArray *arrayM = [NSMutableArray arrayWithObjects:@"copy",@"mutableCopy", nil];
    NSLog(@"内容：%@ 对象地址：%p 对象所属类：%@",arrayM,arrayM,arrayM.class);
    
    // 将对象源copy到可变对象
    NSMutableArray *array1 = [arrayM copy];
    NSLog(@"内容：%@ 对象地址：%p 对象所属类：%@",array1,array1,array1.class);
    
    // 将对象源mutableCopy到可变对象
    NSMutableArray *array2 = [arrayM mutableCopy];
    NSLog(@"内容：%@ 对象地址：%p 对象所属类：%@",array2,array2,array2.class);
    
    // 将对象源copy到不可变对象
    NSArray *array3 = [arrayM copy];
    NSLog(@"内容：%@ 对象地址：%p 对象所属类：%@",array3,array3,array3.class);
    
    // 将对象源mutablCopy到不可变对象
    NSArray *array4 = [arrayM mutableCopy];
    NSLog(@"内容：%@ 对象地址：%p 对象所属类：%@",array4,array4,array4.class);
    
    NSLog(@"-----------------------------------------------------------------------");
    
    // 修改对象源，然后再次对这五个对象进行打印分析
    [arrayM addObject:@"test"];
    NSLog(@"内容：%@ 对象地址：%p 对象所属类：%@",arrayM,arrayM,arrayM.class);
    NSLog(@"内容：%@ 对象地址：%p 对象所属类：%@",array1,array1,array1.class);
    NSLog(@"内容：%@ 对象地址：%p 对象所属类：%@",array2,array2,array2.class);
    NSLog(@"内容：%@ 对象地址：%p 对象所属类：%@",array3,array3,array3.class);
    NSLog(@"内容：%@ 对象地址：%p 对象所属类：%@",array4,array4,array4.class);

    // 以不可变的NSArray作为对象源
//    NSArray  *arrayM = [NSArray arrayWithObjects:@"copy",@"mutableCopy", nil];
//    NSLog(@"内容：%@ 对象地址：%p 对象所属类：%@",arrayM,arrayM,arrayM.class);
//    
//    // 将对象源copy到可变对象
//    NSMutableArray *array1 = [arrayM copy];
//    NSLog(@"内容：%@ 对象地址：%p 对象所属类：%@",array1,array1,array1.class);
//    
//    // 将对象源mutableCopy到可变对象
//    NSMutableArray *array2 = [arrayM mutableCopy];
//    NSLog(@"内容：%@ 对象地址：%p 对象所属类：%@",array2,array2,array2.class);
//    
//    // 将对象源copy到不可变对象
//    NSArray *array3 = [arrayM copy];
//    NSLog(@"内容：%@ 对象地址：%p 对象所属类：%@",array3,array3,array3.class);
//    
//    // 将对象源mutablCopy到不可变对象
//    NSArray *array4 = [arrayM mutableCopy];
//    NSLog(@"内容：%@ 对象地址：%p 对象所属类：%@",array4,array4,array4.class);
# pragma mark - 关键字unsafe_unretained,retain,copy,assign的学习
    NSObject *obj1 = [NSObject new];
    //默认为strong
    {
        
        NSObject *obj2 = obj1;
        obj1 = nil;
        NSLog(@"object_strong 2 = %p",obj2);//not nil
    }
    //weak
    {

        obj1 = [NSObject new];
        __weak NSObject *obj2 = obj1;
        obj1 = nil;
        
        NSLog(@"object_weak 2 = %@", obj2);//nil
    }
    //assign
    {
        NSObject *strongPoint = [NSObject new];
        NSLog(@"strong属性：%@",strongPoint);
        __weak NSObject *weakPoint = strongPoint;
        self.assignPoint = strongPoint;
        strongPoint = nil;
        NSLog(@"weak属性：%@",weakPoint);
//        NSLog(@"assign属性：%@",_assignPoint); _assignPoint不会自动赋予nil，变成野指针这里crash
    }
    //__autoreleasing
    [self test];
}

-(void)test
{
    NSError *error = nil;
    NSError * __autoreleasing tmp = error;
    [self generateErrorInVariable:&tmp];
    error = tmp;
    NSLog(@"Error = %@", error);
}

- (void) generateErrorInVariable:(__autoreleasing NSError **)paramError{
    NSArray *objects = [[NSArray alloc] initWithObjects:@"A simple error", nil];
    NSArray *keys = [[NSArray alloc] initWithObjects:NSLocalizedDescriptionKey, nil];
    NSDictionary *errorDictionary = [[NSDictionary alloc] initWithObjects:objects forKeys:keys];
    *paramError = [[NSError alloc] initWithDomain:@"MyApp" code:1 userInfo:errorDictionary];
}

- (void)changeValue:(int *)price count:(int)count {
    *price = *price * count;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (instancetype)factoryMethodA { return [[[self class] alloc] init]; }
+ (id)factoryMethodB { return [[[self class] alloc] init]; }
@end
