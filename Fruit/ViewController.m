//
//  ViewController.m
//  Fruit
//
//  Created by Build User on 1/28/14.
//  Copyright (c) 2014 Pitt. All rights reserved.
//

#import "ViewController.h"
#import "Fruit.h"
#import "Vegetable.h"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *cart;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.cart = [[NSMutableArray alloc] init];
    NSString *itemName;
    NSString *vegName = @"Onion";
    NSString *vegName2 = @"Potato";
    NSString *vegName3 = @"Pumpkin";
    
    
    for (int i = 0; i<50; i++) {
        itemName = [[NSString alloc] initWithFormat:@"%@ %d", vegName, i];
        Vegetable *tempVeg = [[Vegetable alloc] initWithName:itemName andShape:@"Round" andColor:@"Yellow"];
        [self.cart addObject:tempVeg];
        itemName = [[NSString alloc] initWithFormat:@"%@ %d", vegName2, i];
        tempVeg = [[Vegetable alloc] initWithName:itemName andShape:@"Irregular oval" andColor:@"Brown"];
        [self.cart addObject:tempVeg];
        itemName = [[NSString alloc] initWithFormat:@"%@ %d", vegName3, i];
        tempVeg = [[Vegetable alloc] initWithName:itemName andShape:@"Round" andColor:@"Orange"];
        [self.cart addObject:tempVeg];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.cart count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *identifier = @"vegetableCell";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    
    cell.textLabel.text = [[self.cart objectAtIndex:[indexPath row]] name];
    return cell;
    
}




@end
