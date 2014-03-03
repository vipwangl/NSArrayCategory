//
//  ViewController.m
//  category
//
//  Created by mamawang on 14-3-3.
//  Copyright (c) 2014年 MaMaWang. All rights reserved.
//

#import "ViewController.h"
#import "NSArray+Category.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSNumber *a1 = [NSNumber numberWithInt:2];
    NSNumber *a2 = [NSNumber numberWithInt:21];
    NSNumber *a3 = [NSNumber numberWithInt:10];
    NSNumber *a4 = [NSNumber numberWithInt:0];
    NSNumber *a5 = [NSNumber numberWithInt:19];
    NSNumber *a6 = [NSNumber numberWithInt:19];
    NSNumber *a7 = [NSNumber numberWithInt:2];
    
    NSArray *testArray1 = [NSArray arrayWithObjects:a1, a2, a3, a4, a5, a6, a7, nil];
    NSLog(@"排序前：%@",testArray1);
    
    testArray1 = [NSArray sortNumArray:testArray1];
    NSLog(@"排序后：%@", testArray1);
    
    NSArray *testArray2 = [NSArray arrayWithObjects:a1, a2, a3, a4, a5, a6, a7, nil];
    NSLog(@"去掉重复元素前：%@", testArray2);
    
    testArray2 = [NSArray getUnduplicatedElement:testArray2];
    NSLog(@"去掉重复元素后：%@", testArray2);
    
    NSArray *testArray3 = [NSArray arrayWithObjects:a1, a2, a3, a4, a5, a6, a7, nil];
    NSLog(@"逆序前：%@", testArray3);
    
    testArray3 = [NSArray reverseArray:testArray3];
    NSLog(@"逆序后：%@", testArray3);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
