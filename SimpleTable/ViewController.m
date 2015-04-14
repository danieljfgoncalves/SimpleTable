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

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [myRecipes.recipes count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.textLabel.text = [myRecipes.recipes objectAtIndex:indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:@"creme_brelee"];
    return cell;
}

@end
