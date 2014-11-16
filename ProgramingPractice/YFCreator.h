//
//  YFCreater.h
//  ProgramingPractice
//
//  Created by yufu on 14/11/16.
//  Copyright (c) 2014年 yufu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YFCreater : NSObject
//构建一个升序的以interval为间隔的，从num开始的，长度为length的NSArray
+(NSArray*)createRiseNSArrayFrom:(NSInteger)num
                            setInterval:(NSInteger)interval
                          withLength:(NSInteger)length;

//构建一个升序的以interval为间隔的，从num开始的，长度为length的C的INT数组
+(NSInteger*)createRiseIntArrayFrom:(NSInteger)num
                     setInterval:(NSInteger)interval
                      withLength:(NSInteger)length;
@end
