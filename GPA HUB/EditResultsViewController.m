//
//  EditResultsViewController.m
//  GPA HUB
//
//  Created by Omal Perera on 7/30/16.
//  Copyright © 2016 omalperera.com. All rights reserved.
//

#import "EditResultsViewController.h"

@interface EditResultsViewController()
@property (weak, nonatomic) IBOutlet UIPickerView *creditPicker;
@property (weak, nonatomic) IBOutlet UIPickerView *gradesPicker;
@property  NSArray *credits;
@property  NSArray *grades;
@end

@implementation EditResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.credits = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10"];
    self.grades = @[@"A+", @"A", @"A-", @"B+", @"B", @"B-", @"C+", @"C", @"C-", @"D+", @"D", @"D-", @"E"];
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


/* ** START : To handle the picker for selesct Credits & Grade ** */
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [self.credits count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return self.credits[row];
}
/* ** END : To handle the picker for selesct Credits & Grade ** */

@end