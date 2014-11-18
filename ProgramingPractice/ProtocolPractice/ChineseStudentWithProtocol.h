//
//  ChineseStudeng.h
//  ProgramingPractice
//
//  Created by yufu on 14/11/18.
//  Copyright (c) 2014年 yufu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProtocolChineseStudent.h"

typedef void (* funActionString)(NSString *,CGContextRef);

typedef struct _functionString{
    char *functionStr;
    void (*funActionString) (NSString *, CGContextRef);
} FunStr;

funActionString initFillintoContext(NSString *fill,CGContextRef context);
funActionString initStrokeintoContext(NSString *stroke,CGContextRef context);
funActionString initStrokeWidthintoContext(NSString *strokeWidth,CGContextRef context);


@interface ChineseStudeng : NSObject <ProtocolChineseStudent>


@end
