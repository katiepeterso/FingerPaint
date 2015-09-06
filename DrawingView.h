//
//  DrawingView.h
//  FingerPaint
//
//  Created by Katherine Peterson on 2015-09-04.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Line;

@protocol DrawingDelegate <NSObject>

-(void)passLineData;

@end

@interface DrawingView : UIView

@property (nonatomic, strong) Line *drawLine;
@property (nonatomic, weak) id <DrawingDelegate> delegate;


@end
