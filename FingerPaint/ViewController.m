//
//  ViewController.m
//  FingerPaint
//
//  Created by Katherine Peterson on 2015-09-04.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "ViewController.h"
#import "DrawingView.h"
#import "Line.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet DrawingView *drawingView;
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
//    self.currentLine.startingPoint = [touch locationInView:self.drawingView];
    
    [self.drawingView.drawingPath moveToPoint:[touch locationInView:self.drawingView]];
    [self.drawingView setNeedsDisplay];

    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch* touch = [touches anyObject];
//    [self.currentLine.linePoints addObject:[NSValue valueWithCGPoint:[touch locationInView:self.drawingView]]];
    
    [self.drawingView.drawingPath addLineToPoint:[touch locationInView:self.drawingView]];

    
    [self.drawingView setNeedsDisplay];
}
     


@end
