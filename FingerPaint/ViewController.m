//
//  ViewController.m
//  FingerPaint
//
//  Created by Katherine Peterson on 2015-09-04.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "ViewController.h"
#import "Line.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *drawingView;
@property (strong, nonatomic) Line *currentLine;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.currentLine = [Line new];
    UITouch* touch = [touches anyObject];
    self.currentLine.startingPoint = [touch locationInView:self.drawingView];
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch* touch = [touches anyObject];
    [self.currentLine.linePoints addObject:[NSValue valueWithCGPoint:[touch locationInView:self.drawingView]]];
}
//     
//-(void)drawRect:(CGRect)rect {
//    UIBezierPath *newDrawing = [UIBezierPath new];
//    newDrawing.lineWidth = 10;
//    [newDrawing moveToPoint:self.previousTouchPoint];
//    [newDrawing addLineToPoint:CGPointMake(rect.x, rect.y)
//    [[UIColor purpleColor]setStroke];
//    [newDrawing stroke];
//}

@end
