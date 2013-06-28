//
//  SimpleTableViewController.m
//  SimpleTable
//
//  Created by Puthirith Nuon on 6/27/13.
//  Copyright (c) 2013 Puthirith Nuon. All rights reserved.
//

#import "SimpleTableViewController.h"

@interface SimpleTableViewController ()

@end

@implementation SimpleTableViewController
{
    NSArray *tableData,*thumbnails;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    tableData = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
    thumbnails = [NSArray arrayWithObjects:@"1.jpeg", @"2.jpeg", @"3.jpeg", @"4.jpeg", @"5.jpeg", @"6.jpeg", @"7.jpeg", @"8.jpeg", @"9.jpeg", @"10.jpeg", @"11.jpeg", @"12.jpeg", @"13.jpeg", @"14.jpeg", @"15.jpeg", @"16.jpeg", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    //cell.textLabel.font = [UIFont systemFontOfSize:10];
    cell.detailTextLabel.text = @"ABC";
    cell.detailTextLabel.font=[UIFont systemFontOfSize:10];
    cell.imageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    cell.imageView.frame=CGRectMake(0, 0, 40, 40);
    
    //cell.imageView.image=[UIImage imageNamed:@"Green-Bee1.jpg"];
    return cell;
}
@end
