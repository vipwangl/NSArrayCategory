//
//  NSArray+Category.m
//  category
//
//  Created by mamawang on 14-3-3.
//  Copyright (c) 2014年 MaMaWang. All rights reserved.
//

#import "NSArray+Category.h"

@implementation NSArray (Category)

// NSInteger排序
+ (NSArray *)sortNumArray:(NSArray *)array{
    NSArray * result = [array sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        int a = [obj1 intValue];
        int b = [obj2 intValue];
        if(a > b)
            return NSOrderedDescending;
        else
            return NSOrderedAscending;
    }];
    return result;
}

// 去掉重复元素
+ (NSArray *)getUnduplicatedElement:(NSArray *)array{
    NSSet *set = [NSSet setWithArray:array];
    NSArray *result = [set allObjects];
    return result;
}

// 元素逆序
+ (NSArray *)reverseArray:(NSArray *)array{
    NSMutableArray *result = [NSMutableArray array];
    for(int i = [array count] - 1; i >= 0; i --){
        [result addObject:[array objectAtIndex:i]];
    }
    return result;
}

@end
