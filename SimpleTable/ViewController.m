//
//  ViewController.m
//  SimpleTable
//
//  Created by Daniel Goncalves on 2015-04-13.
//  Copyright (c) 2015 DG. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

Recipe *myRecipes;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Initiate a instance of the Recipe Class
    myRecipes = [[Recipe alloc]init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 Implemented Delegate method number of rows in section
 returns: returns the number of rows for the table view
 */

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [myRecipes.recipes count];
}

/*
 Implemented Delegate method cellForRowAtIndexPath
 Asks the data source for a cell to insert in a particular location of the table view.
 The returned UITableViewCell object is frequently one that the application reuses for performance reasons.
 */

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.textLabel.text = [myRecipes.recipes objectAtIndex:indexPath.row];
    
    // Added an Image to each cell 
    cell.imageView.image = [UIImage imageNamed:@"creme_brelee"];
    return cell;
}

@end
