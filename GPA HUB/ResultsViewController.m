//
//  ResultsViewController.m
//  GPA HUB
//
//  Created by Omal Perera on 7/30/16.
//  Copyright © 2016 omalperera.com. All rights reserved.
//

#import "ResultsViewController.h"

@implementation ResultsViewController


/* ** START : To handle TableView in the Result Input ** */
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 7;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    //UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    //cell.textLabel.text = @"This is a cell";
    /*
     UITextField *tv =[[UITextField alloc] initWithFrame:CGRectMake(20, (cell.contentView.bounds.size.height-13)/2, (cell.contentView.bounds.size.width)/2, 30)];
     tv.placeholder = @"Subject Name";
     [cell.contentView addSubview:tv];
     */
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Result Input";
}
/* ** END : To handle TableView in the Result Input ** */


@end
