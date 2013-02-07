//
//  MMViewController.h
//  barTalk2
//
//  Created by Ross Matsuda on 2/6/13.
//  Copyright (c) 2013 Genius and Madness. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMViewController : UIViewController
{
    IBOutlet UILabel *myLabel;
}

@property (nonatomic, retain)IBOutlet UILabel *myLabel;

-(IBAction)buttonClicked:(id)sender;
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;


@end
