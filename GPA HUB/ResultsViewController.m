//
//  ResultsViewController.m
//  GPA HUB
//
//  Created by Omal Perera on 7/30/16.
//  Copyright © 2016 omalperera.com. All rights reserved.
//

#import "ResultsViewController.h"
#import "EditResultsViewController.h"

@interface ResultsViewController()

// This is the label that will receive the text sent from the second view controller
@property (weak, nonatomic) IBOutlet UILabel *responseLabel;
@end


@implementation ResultsViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINavigationBar *bar = [self.navigationController navigationBar];
    [bar setBarTintColor:[UIColor colorWithRed:(0.1098039225/1.0) green:(0.2941176593/1.0) blue:(0.666666686500/1.0) alpha:1]];
    [[[self navigationController] navigationBar] setBarStyle:UIBarStyleBlackTranslucent];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    
    
    if (_resultInformation == 0) {
        _resultInformation = [[NSMutableArray alloc] init];
        _singleResultRow = [[DataResults alloc] init];
    }else{
    }

    
   
    _singleResultRow.creditObject = @"3";
    _singleResultRow.gradesObject = @"A";
    _singleResultRow.subjectNameObject = @"Human Computer Interaction";
    [_resultInformation  addObject:_singleResultRow];
    
     /*
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
*/
}

/* ** START : To handle TableView in the Result Input ** */
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //return 2;
    return _resultInformation.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    DataResults *current = [_resultInformation objectAtIndex:indexPath.row];
    NSArray *subviews = cell.contentView.subviews;
    
    for (UIView *subview in subviews) {
        //NSLog(@"Product:- %@", subviews);
        
        if (subview.tag == 90) {
            UILabel *subjectNameLable = (UILabel *)subview;
            //subjectNameLable.textColor = [UIColor colorWithRed:(0.1098039225/1.0) green:(0.2941176593/1.0) blue:(0.666666686500/1.0) alpha:1];
            subjectNameLable.text = [current subjectNameObject];
            _responseLabel.text = [current subjectNameObject];
            
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


// Before we present the Second View Controller we have to declare it's delegate to be the First View Controller
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EditResultsViewController *editResultsVC = [segue destinationViewController];
    ResultsViewController *resultsVC = [segue sourceViewController];
    editResultsVC.delegate = resultsVC;
}

// This will just update the label text with the message we get from the Second View Controller
- (void)receiveMessage:(NSString *)message {
    //_responseLabel.text = message;
    
    _singleResultRow = [[DataResults alloc] init];
    _singleResultRow.creditObject = @"2";
    _singleResultRow.gradesObject = @"A+";
    _singleResultRow.subjectNameObject = @"System Integration & Architecture";
    [_resultInformation  addObject:_singleResultRow];
}

@end
