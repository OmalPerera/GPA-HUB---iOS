//
//  EditResultsViewController.m
//  GPA HUB
//
//  Created by Omal Perera on 7/30/16.
//  Copyright © 2016 omalperera.com. All rights reserved.
//

#import "EditResultsViewController.h"


@interface EditResultsViewController()
@property (strong, nonatomic) IBOutlet UILabel *color;
@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UITextField *subjectName;
@end

@implementation EditResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINavigationBar *bar = [self.navigationController navigationBar];
    [bar setBarTintColor:[UIColor colorWithRed:(0.1098039225/1.0) green:(0.2941176593/1.0) blue:(0.666666686500/1.0) alpha:1]];
    [[[self navigationController] navigationBar] setBarStyle:UIBarStyleBlackTranslucent];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    self.credits = @[@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10"];
    self.grades = @[@"A+", @"A", @"A-", @"B+", @"B", @"B-", @"C+", @"C", @"C-", @"D+", @"D", @"D-", @"E"];
    self.enteredCreditValue = @"0";
    self.enteredGrade = @"E";
    
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
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    //set number of rows
    if(component== 0){
        return [self.credits count];
    }
    else{
        return [self.grades count];
    }
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component == 0){
        return [self.credits objectAtIndex:row];
    }else
    {
        return [self.grades objectAtIndex:row];
    }
}
/* ** END : To handle the picker for selesct Credits & Grade ** */


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSInteger creditRow = [self.picker selectedRowInComponent:0];
    NSInteger gradesRow = [self.picker selectedRowInComponent:1];
    
    self.enteredCreditValue = (NSString *)[self.credits objectAtIndex:creditRow];
    self.enteredGrade = (NSString *)[self.grades objectAtIndex:gradesRow];
}

- (IBAction)editFinished:(id)sender {
    self.color.text = [NSString stringWithFormat:@"%@ %@", self.enteredCreditValue, self.enteredGrade];
    
    //DataResults *resultRow_1 = [[DataResults alloc] init];
    //resultRow_1.creditObject = self.enteredCreditValue;
    //resultRow_1.gradesObject = self.enteredGrade;
    //resultRow_1.subjectNameObject = self.subjectName.text;
}


// This is the button that closes the modal but first sends the message to its delegate
- (IBAction)closeAndSend:(id)sender {
    [self.delegate receiveMessage:_subjectName.text];
    [self.navigationController popViewControllerAnimated:YES];

}


@end






