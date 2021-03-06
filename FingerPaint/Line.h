//
//  Line.h
//  FingerPaint
//
//  Created by Katherine Peterson on 2015-09-04.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Line : NSObject

@property (nonatomic, strong) NSMutableArray *linePoints;
@property (nonatomic) CGPoint startPoint;
@property (nonatomic, strong) UIColor *lineColor;
@property (nonatomic, strong) UIBezierPath *linePath;

@end
