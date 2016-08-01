//
//  ResultsViewController.m
//  GPA HUB
//
//  Created by Omal Perera on 7/30/16.
//  Copyright © 2016 omalperera.com. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController(){
    
}
@end

@implementation ResultsViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINavigationBar *bar = [self.navigationController navigationBar];
    [bar setBarTintColor:[UIColor colorWithRed:(0.1098039225/1.0) green:(0.2941176593/1.0) blue:(0.666666686500/1.0) alpha:1]];
    [[[self navigationController] navigationBar] setBarStyle:UIBarStyleBlackTranslucent];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    _resultInformation = [[NSMutableArray alloc] init];
    
    DataResults *resultRow_10 = [[DataResults alloc] init];
    
    resultRow_10.creditObject = @"3";
    resultRow_10.gradesObject = @"A";
    resultRow_10.subjectNameObject = @"Human Computer Interaction";
    [_resultInformation  addObject:resultRow_10];
    
    resultRow_10 = [[DataResults alloc] init];
    resultRow_10.creditObject = @"4";
    resultRow_10.gradesObject = @"A-";
    resultRow_10.subjectNameObject = @"Analysis of Algorithm";
    [_resultInformation addObject:resultRow_10];
    
    resultRow_10 = [[DataResults alloc] init];
    resultRow_10.creditObject = @"2";
    resultRow_10.gradesObject = @"B";
    resultRow_10.subjectNameObject = @"Advanced Database Systems";
    [_resultInformation addObject:resultRow_10];
    
    resultRow_10 = [[DataResults alloc] init];
    resultRow_10.creditObject = @"2";
    resultRow_10.gradesObject = @"A+";
    resultRow_10.subjectNameObject = @"System Integration & Architecture";
    [_resultInformation addObject:resultRow_10];
    
    resultRow_10 = [[DataResults alloc] init];
    resultRow_10.creditObject = @"3";
    resultRow_10.gradesObject = @"A";
    resultRow_10.subjectNameObject = @"IS Risk Management";
    [_resultInformation addObject:resultRow_10];
    
    resultRow_10 = [[DataResults alloc] init];
    resultRow_10.creditObject = @"2";
    resultRow_10.gradesObject = @"A-";
    resultRow_10.subjectNameObject = @"Business Inteligence";
    [_resultInformation addObject:resultRow_10];
    
    resultRow_10 = [[DataResults alloc] init];
    resultRow_10.creditObject = @"2";
    resultRow_10.gradesObject = @"B+";
    resultRow_10.subjectNameObject = @"IT Governance";
    [_resultInformation addObject:resultRow_10];
    
    resultRow_10 = [[DataResults alloc] init];
    resultRow_10.creditObject = @"3";
    resultRow_10.gradesObject = @"A";
    resultRow_10.subjectNameObject = @"Web Technoologies";
    [_resultInformation addObject:resultRow_10];
    
    
    
    
    
}

/* ** START : To handle TableView in the Result Input ** */
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _resultInformation.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    DataResults *current = [_resultInformation objectAtIndex:indexPath.row];
    //cell.textLabel.text = [current subjectNameObject];
    NSArray *subviews = cell.contentView.subviews;
    
    for (UIView *subview in subviews) {
        //NSLog(@"Product:- %@", subviews);
        
        if (subview.tag == 90) {
            UILabel *subjectNameLable = (UILabel *)subview;
            //subjectNameLable.textColor = [UIColor colorWithRed:(0.1098039225/1.0) green:(0.2941176593/1.0) blue:(0.666666686500/1.0) alpha:1];
            subjectNameLable.text = [current subjectNameObject];
            
        }else if(subview.tag == 91) {
            UILabel *creditLable = (UILabel *)subview;
            //creditLable.textColor = [UIColor colorWithRed:(0.1098039225/1.0) green:(0.2941176593/1.0) blue:(0.666666686500/1.0) alpha:1];
            creditLable.text = [current creditObject];
            
        }else if(subview.tag == 92) {
            UILabel *gradesLabel = (UILabel *)subview;
            //gradesLabel.textColor = [UIColor colorWithRed:(0.1098039225/1.0) green:(0.2941176593/1.0) blue:(0.666666686500/1.0) alpha:1];
            gradesLabel.text = [current gradesObject];
        }
    }

    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Result Input";
}


/* ** END : To handle TableView in the Result Input ** */


@end
