//
//  ProtocolChineseStudent.h
//  ProgramingPractice
//
//  Created by yufu on 14/11/18.
//  Copyright (c) 2014年 yufu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProtocolChinese.h"
#import "ProtocolStudent.h"


@protocol ProtocolChineseStudent <ProtocolChinese, ProtocolStudent>

-(void)afterSchoolStudy;

@end
