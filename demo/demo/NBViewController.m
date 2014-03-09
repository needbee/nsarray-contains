//
//  NBViewController.m
//  demo
//
//  Created by Josh Justice on 3/9/14.
//  Copyright (c) 2014 NeedBee. All rights reserved.
//

#import "NBViewController.h"
#import "NSArray+Contains.h"

@interface NBViewController ()

@property (nonatomic,retain) NSArray *names;
@property (nonatomic,retain) IBOutlet UILabel *yesNo1;
@property (nonatomic,retain) IBOutlet UILabel *yesNo2;

@end

@implementation NBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _names = @[
               @"Sue",
               @"Pankaj",
               @"Jon",
               @"Celestia"
               ];
    NSArray *search = @[@"John",@"Jon"];
    
    _yesNo1.text = [_names containsAny:search] ? @"Yes" : @"No";
    _yesNo2.text = [_names containsAll:search] ? @"Yes" : @"No";
}

-(int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _names.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.textLabel.text = [_names objectAtIndex:indexPath.row];
    return cell;
}

@end
