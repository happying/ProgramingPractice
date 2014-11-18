//
//  YFPracticeNSRange.h
//  ProgramingPractice
//
//  Created by yufu on 14/11/18.
//  Copyright (c) 2014年 yufu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YFPracticeNSRange : NSObject

//判断字符串中是否存在子字符串
+(BOOL)ifHaveSubString:(NSString*)subString inString:(NSString*)String;

//从后往前搜索字符串，若存在子字符串，则返回子字符串所在位置，否则返回-1；
+(NSInteger)searchTheLastSubString:(NSString*)subString inString:(NSString*)myString;

//从前往后搜索字符串，若存在子字符串，则返回子字符串所在位置，否则返回-1；
+(NSInteger)searchTheFirstSubString:(NSString*)subString inString:(NSString*)myString;

//根据下标location和长度length获取子字符串，若输入的下标及长度有误，输出错误语句，返回错误语句所组成的string，即比如“Sorry,your length + location is bigger the your string's length, it is illegal”
+(NSString*)getSubStringFrongString:(NSString*)myString whitLocation:(NSUInteger)location andLength:(NSUInteger)length;

//根据下标location和长度length获取子数组，若输入有误则提示之,并返回一个空数组指针。
+(NSArray*)getSubArrayFromArray:(NSArray*)myArray whitLocation:(NSUInteger)location andLength:(NSUInteger)count;
@end
