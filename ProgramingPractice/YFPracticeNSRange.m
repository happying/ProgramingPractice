//
//  YFPracticeNSRange.m
//  ProgramingPractice
//
//  Created by yufu on 14/11/18.
//  Copyright (c) 2014年 yufu. All rights reserved.
//

#import "YFPracticeNSRange.h"

@implementation YFPracticeNSRange

+(BOOL)ifHaveSubString:(NSString *)subString inString:(NSString *)String{
    NSRange range;
    BOOL b = NO;
    range = [String rangeOfString:subString];
    if (range.length > 0) {
        b = YES;
    }
    return b;
}

+(NSInteger)searchTheLastSubString:(NSString *)subString inString:(NSString *)myString{
    NSInteger identifer = -1;
    
    NSRange range;
    range = [myString rangeOfString:subString options:NSBackwardsSearch];
    if (range.length > 0 ) {
        identifer = range.location;
    }
    
    return identifer;
}

+(NSInteger)searchTheFirstSubString:(NSString *)subString inString:(NSString *)myString{
    NSInteger identifer = -1;
    
    NSRange range;
    range = [myString rangeOfString:subString];
    if (range.length > 0 ) {
        identifer = range.location;
    }
    
    return identifer;
}

+(NSString *)getSubStringFrongString:(NSString *)myString whitLocation:(NSUInteger)location andLength:(NSUInteger)length{
    NSString* subString;
    NSRange range = {location,length};
    
    if (location > myString.length) {
        NSLog(@"Sorry,your location is illegal");
        return @"Sorry,your location is illegal";
    }
    
    if (length > myString.length) {
        NSLog(@"Sorry,your length is illegal");
        return @"Sorry,your length is illegal";
    }
    
    if (length + location > myString.length) {
        NSLog(@"Sorry,your length + location is bigger the your string's length, it is illegal");
        return @"Sorry,your length + location is bigger the your string's length, it is illegal";
    }
    
    subString = [myString substringWithRange:range];
    
    return subString;
}

+(NSArray *)getSubArrayFromArray:(NSArray *)myArray whitLocation:(NSUInteger)location andLength:(NSUInteger)count{
    NSArray* subArray;
    NSRange range = NSMakeRange(location, count);
    
    if (location > myArray.count) {
        NSLog(@"Sorry,your location is illegal");
        return subArray;
    }
    if (count > myArray.count) {
        NSLog(@"Sorry,your length is illegal");
        return subArray;
    }
    if (count + location > myArray.count) {
        NSLog(@"Sorry,your length + location is bigger the your string's length, it is illegal");
        return subArray;
    }
    subArray = [myArray subarrayWithRange:range];
    return subArray;
}

@end
