//
//  NSArray+Category.h
//  category
//
//  Created by mamawang on 14-3-3.
//  Copyright (c) 2014年 MaMaWang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Category)

// int排序
+ (NSArray *)sortNumArray:(NSArray *)array;

// 去掉重复元素
+ (NSArray *)getUnduplicatedElement:(NSArray *)array;

// 元素逆序
+ (NSArray *)reverseArray:(NSArray *)array;

@end
