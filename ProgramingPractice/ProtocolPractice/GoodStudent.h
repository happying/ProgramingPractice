//
//  GoodStudent.h
//  ProgramingPractice
//
//  Created by yufu on 14/11/18.
//  Copyright (c) 2014年 yufu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProtocolChineseStudent.h"

@interface GoodStudent : NSObject

@property id<ProtocolChineseStudent> myDelegate;

-(void)iCantButSomeBadBoyCan;

@end
