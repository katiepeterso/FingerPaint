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
        self.drawLine = [Line new];
        
    }
    return self;
}

- (void)awakeFromNib {
    self.drawLine = [Line new];

}

-(void)drawRect:(CGRect)rect {
    
    [self.delegate passLineData];
    [self.drawLine.linePath moveToPoint:self.drawLine.startPoint];
    self.drawLine.linePath.lineWidth = 10;
    [self.drawLine.lineColor setStroke];
    [self.drawLine.linePath setLineCapStyle:kCGLineCapRound];
    
    //smoothing:
    if (self.drawLine.linePoints.count >= 4) {
        for (int i = 1; 3*i < self.drawLine.linePoints.count; i++) {
            NSValue *start = [self.drawLine.linePoints objectAtIndex:3*i];
            CGPoint CGStart = start.CGPointValue;
            NSValue *CP1 = [self.drawLine.linePoints objectAtIndex:((3*i) - 2)];
            CGPoint CGCP1 = CP1.CGPointValue;
            NSValue *CP2 = [self.drawLine.linePoints objectAtIndex:((3*i) - 1)];
            CGPoint CGCP2 = CP2.CGPointValue;
            
            [self.drawLine.linePath addCurveToPoint:CGStart controlPoint1:CGCP1 controlPoint2:CGCP2];
            [self.drawLine.linePath stroke];
            [self.drawLine.linePath moveToPoint: CGStart];
            
        }
    }
    
    [self.drawLine.linePath stroke];
    
    
    
}

@end