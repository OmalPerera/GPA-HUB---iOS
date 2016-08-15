//
//  ResultsViewController.h
//  GPA HUB
//
//  Created by Omal Perera on 7/30/16.
//  Copyright © 2016 omalperera.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataResults.h"

@protocol ResultsViewControllerDelegate <NSObject>
- (void)receiveMessage:(NSString *)message;
@end


@interface ResultsViewController : UIViewController <UITableViewDataSource, ResultsViewControllerDelegate>

@property (nonatomic) NSString *RVCccc;
@property (nonatomic) NSString *RCVggg;
@property (nonatomic) NSMutableArray *resultInformation;
@property (nonatomic) DataResults *singleResultRow;

@end
