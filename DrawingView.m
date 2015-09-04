//
//  DrawingView.m
//  FingerPaint
//
//  Created by Katherine Peterson on 2015-09-04.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "DrawingView.h"

@implementation DrawingView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.drawingPath = [UIBezierPath bezierPath];
    }
    return self;
}

- (void)awakeFromNib {
    self.drawingPath = [UIBezierPath bezierPath];
}

-(void)drawRect:(CGRect)rect {
//    UIBezierPath *newDrawing = [UIBezierPath new];
    self.drawingPath.lineWidth = 10;
//    [self.drawingPath moveToPoint:self.currentLine.startingPoint];
    
//    for (NSValue *linePoint in self.currentLine.linePoints) {
//        CGPoint CGLinePoint = linePoint.CGPointValue;
//        [newDrawing addLineToPoint:CGLinePoint];
//    }
    [[UIColor purpleColor]setStroke];
    [self.drawingPath stroke];
}

@end
