//
//  DrawingView.m
//  FingerPaint
//
//  Created by Katherine Peterson on 2015-09-04.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "DrawingView.h"
#import "Line.h"
#import "ViewController.h"

@interface DrawingView ()

@property (nonatomic) ViewController *touchController;

@end

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
    //smoothing:
    [self.drawingPath moveToPoint:self.currentLine.startingPoint];
    
    Line *line = [self.delegate lineToDraw];
    
    for (NSValue *linePoint in self.currentLine.linePoints) {
        CGPoint CGLinePoint = linePoint.CGPointValue;
        [newDrawing addLineToPoint:CGLinePoint];
    }

    
    self.drawingPath.lineWidth = 10;
    [[UIColor purpleColor]setStroke];
    [self.drawingPath stroke];
    
    
    
}

@end

UIBezierPath* bezierPath = [UIBezierPath bezierPath];
[bezierPath moveToPoint: CGPointMake(77.5, 36.5)];
[bezierPath addCurveToPoint: CGPointMake(101.5, 72.5) controlPoint1: CGPointMake(67.78, 56.83) controlPoint2: CGPointMake(75.76, 76.01)];
[bezierPath addCurveToPoint: CGPointMake(157.5, 66.5) controlPoint1: CGPointMake(127.24, 68.99) controlPoint2: CGPointMake(127.69, 97.13)];
