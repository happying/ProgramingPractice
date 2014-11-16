//
//  TwoGroupMerges.h
//  ProgramingPractice
//
//  Created by yufu on 14/11/15.
//  Copyright (c) 2014年 yufu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TwoGroupMerges : NSObject

//将两个升序的NSArray数组合并为一个升序的NSMutableArray
+(NSMutableArray*)twoArrayMergesWithFirstArray:(NSArray*)firstArray SecondArray:(NSArray*)secondArray;
//将两个升序的intArray数组合并为一个并输出；
void twoGroupMerges(int *a, int *b, int aLen, int bLen);
@end
