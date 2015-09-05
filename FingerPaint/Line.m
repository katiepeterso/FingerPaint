//
//  Line.m
//  FingerPaint
//
//  Created by Katherine Peterson on 2015-09-04.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "Line.h"

@implementation Line

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.linePoints = [NSMutableArray new];
        self.startPoints = [NSMutableArray new];
        self.curveToPoints = [NSMutableArray new];
        self.controlPoints1 = [NSMutableArray new];
        self.controlPoints2 = [NSMutableArray new];
    }
    return self;
}

@end
