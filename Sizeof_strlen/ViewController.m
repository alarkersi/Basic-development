//
//  ViewController.m
//  ResearchOfChar
//
//  Created by koGyoko on 2017/05/25.
//  Copyright © 2017年 koGyoko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    char a[] = {'a','b','c','d'};
    int length = sizeof(a);
    printf("length is %d\n",length);//アウトプット4は配列のサイズ
    
    char b[20] = "this is a string";
    NSInteger len_sizeof_b = sizeof(b);
    NSInteger len_strlen_b = strlen(b);
    printf("sizeof of b is %lu\n",len_sizeof_b);//アウトプット20はメモリのサイズ
    printf("strlen of b is %lu\n",len_strlen_b);//アウトプット16はストリングのサイズ
    
    char *c = "s";
    printf("sizeof of c is %lu\n",sizeof(c));//アウトプット8はデフォルトサイズ
    printf("strlen of c is %lu\n",strlen(c));//アウトプット1はcのサイズ
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
