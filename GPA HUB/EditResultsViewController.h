//
//  EditResultsViewController.h
//  GPA HUB
//
//  Created by Omal Perera on 7/30/16.
//  Copyright © 2016 omalperera.com. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "DataResults.h"
#import "ResultsViewController.h"

@class EditResultsViewController;

@interface EditResultsViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>


@property (weak, nonatomic) id<ResultsViewControllerDelegate> delegate;
@property NSString *enteredCreditValue;
@property NSString *enteredGrade;
@property (strong, nonatomic) NSArray *credits;
@property (strong, nonatomic) NSArray *grades;

@property (strong, nonatomic) NSArray *data;


@end
