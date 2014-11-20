//
//  BadStudent.m
//  ProgramingPractice
//
//  Created by yufu on 14/11/18.
//  Copyright (c) 2014年 yufu. All rights reserved.
//

#import "BadStudent.h"

@implementation BadStudent

-(instancetype)initWithDelegate:(id<ProtocolChineseStudent>)_myDelegate{
    self = [super init];
    if (self) {
        myDelegate = _myDelegate;
    }
    
    return self;
}


-(void)iCantButMyDelegaterCan{
    NSLog(@"I can't learn well, but I can ask someone to help me");
    [myDelegate learn];
    
}

@end