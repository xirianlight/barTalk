//
//  MMViewController.m
//  barTalk2
//
//  Created by Ross Matsuda on 2/6/13.
//  Copyright (c) 2013 Genius and Madness. All rights reserved.
//

#import "MMViewController.h"
#import "MMUITextField.h"
@interface MMViewController ()
{
    MMUITextField * firstText;
    MMUITextField * secondText;
 

}

@end

@implementation MMViewController
//code for the button
@synthesize myLabel;
-(IBAction)buttonClicked:(id)sender
{
    myLabel.text = @"Now signed in.";
}
-(IBAction)buttonPressed:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"Welcome"
                                                   message: @"Alert Message here"
                                                  delegate: self
                                         cancelButtonTitle:@"Cancel"
                                         otherButtonTitles:@"OK",nil];
    
    
    [alert show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        NSLog(@"user pressed Button Indexed 0");
        // Any action can be performed here
    }
    else
    {
        NSLog(@"user pressed Button Indexed 1");
        // Any action can be performed here
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self view];
    
    [[self view] setBackgroundColor:[UIColor blackColor]];
       UIButton *logInButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    firstText = [[MMUITextField alloc] initWithFrame:CGRectMake(10, 50, 300, 35)];
    secondText = [[MMUITextField alloc] initWithFrame:CGRectMake(10, 100, 300, 35)];
    
    //Part of Done button function on keyboard
    [firstText setDelegate:self];
    [secondText setDelegate:self];
    [[self view] addSubview:firstText];
    [[self view] addSubview:secondText];
    [[self view] addSubview:logInButton];
    [firstText setPlaceholder:@"First Name"];
    [secondText setPlaceholder:@"Second Name"];
    
    
    
}
- (BOOL) textFieldShouldReturn: (UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
