//
//  ResultInputViewController.m
//  GPA HUB
//
//  Created by Omal Perera on 3/13/16.
//  Copyright © 2016 omalperera.com. All rights reserved.
//

#import "ResultInputViewController.h"

@interface ResultInputViewController ()

@end

@implementation ResultInputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)addNewRow:(id)sender {
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 200, 300, 40)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.font = [UIFont systemFontOfSize:15];
    textField.keyboardType = UIKeyboardTypeDefault;
    textField.returnKeyType = UIReturnKeyDone;
    textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    textField.delegate = self;
    [self.view addSubview:textField];
}
//any method


@end
