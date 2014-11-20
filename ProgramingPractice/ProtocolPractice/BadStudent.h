//
//  BadStudent.h
//  ProgramingPractice
//
//  Created by yufu on 14/11/18.
//  Copyright (c) 2014年 yufu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProtocolChineseStudent.h"

@interface BadStudent : NSObject{
    id<ProtocolChineseStudent> myDelegate;
}

-(instancetype)initWithDelegate:(id<ProtocolChineseStudent>)_myDelegate;

-(void)iCantButMyDelegaterCan;

@end





