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
@property (weak, nonatomic) IBOutlet UILabel *loginFeedback;

@end

@implementation ViewController
- (IBAction)loginNext:(id)sender {
    NSString *userName = [[self loginName]text];
    NSString *userUniversity = [[self loginUniversity]text];
    NSString *feedbackMgs = [NSString stringWithFormat:@"Hello, %@",userName];
    [[self loginFeedback] setText:feedbackMgs];
    
    [[self loginName] resignFirstResponder];
    [[self loginUniversity] resignFirstResponder];
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
