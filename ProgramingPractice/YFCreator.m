//
//  YFCreater.m
//  ProgramingPractice
//
//  Created by yufu on 14/11/16.
//  Copyright (c) 2014年 yufu. All rights reserved.
//

#import "YFCreator.h"

@implementation YFCreater

+(NSArray *)createRiseNSArrayFrom:(NSInteger)num
                             setInterval:(NSInteger)interval
                           withLength:(NSInteger)length{
    
    NSMutableArray* mutableArray = [[NSMutableArray alloc] init];
    
    for (int i = 0 ; i < length; i++) {
        [mutableArray addObject:[NSString stringWithFormat:@"%ld",(long)num]];
        num += interval;
    }
    NSArray* finalArray = [mutableArray copy];
    return finalArray;
}

+(NSInteger *)createRiseIntArrayFrom:(NSInteger)num setInterval:(NSInteger)interval withLength:(NSInteger)length{
    
    NSInteger finalArray[length];
    NSInteger * ret;//没有实际意义的参数，主要是用来消除warming，如果直接返回finalArray的话，会有warming提示说，“ Address of stack memory associated with local variable 'finalArray' returned”
    
    for (NSInteger i = 0 ; i < length; i++) {
        finalArray[i] = num;
        num += interval;
    }
    
    ret = finalArray;
    return ret;
}

@end
