//
//  ViewController.m
//  GPA HUB
//
//  Created by Omal Perera on 3/1/16.
//  Copyright © 2016 omalperera.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *loginName;
@property (weak, nonatomic) IBOutlet UITextField *loginUniversity;

@end

@implementation ViewController
- (IBAction)loginNext:(id)sender {
    NSString *userName = [[self loginName]text];
    //NSString *userUniversity = [[self loginUniversity]text];
    //NSString *feedbackMgs = [NSString stringWithFormat:@"Hello, %@",userName];
    //[[self loginFeedback] setText:feedbackMgs];
    
    //dissmisses keyboard when button pressed
    [[self loginName] resignFirstResponder];
    [[self loginUniversity] resignFirstResponder];
}

// dismisses keyboard when return key pressed on software keyboard
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

// dissmisses keyboard when text field disselected
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [[self view] endEditing:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
