//
//  MMUITextField.m
//  barTalk2
//
//  Created by Ross Matsuda on 2/6/13.
//  Copyright (c) 2013 Genius and Madness. All rights reserved.
//

#import "MMUITextField.h"
#import <QuartzCore/QuartzCore.h>

@implementation MMUITextField
-(id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]){
        //properties go here
        [self setBackgroundColor:[UIColor grayColor]];
        [self setReturnKeyType:UIReturnKeyDone];
        [self setBorderStyle:UITextBorderStyleRoundedRect];
        [self setFont: [UIFont systemFontOfSize:24]];
        [self setAlpha:0.9];
        [self setTextColor:[UIColor blackColor]];
        [self setPlaceholder:@"Classy marble"];
        self.layer.cornerRadius = 8;
        
        return self;
    }
    
    return nil;
}


@end
