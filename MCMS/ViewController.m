//
//  ViewController.m
//  MCMS
//
//  Created by David Seitz Jr on 5/19/15.
//  Copyright (c) 2015 DavidSights. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"
#import "CreatureViewController.h"

@interface ViewController () <UITabBarDelegate, UITableViewDataSource, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *textView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    MagicalCreature *unicorn = [[MagicalCreature alloc] initWithName:@"Unicorn" withDetail:@"a horse with a horn on its head" withImage:[UIImage imageNamed:@"Unicorn"]];
    MagicalCreature *fairy = [[MagicalCreature alloc] initWithName:@"Fairy" withDetail:@"a flying tiny person" withImage:[UIImage imageNamed:@"Fairy"]];
    MagicalCreature *minotaur = [[MagicalCreature alloc] initWithName:@"Minotaur" withDetail:@"a half man half horse" withImage:[UIImage imageNamed:@"Minotaur"]];

    self.creatures = [NSMutableArray arrayWithObjects:unicorn, fairy, minotaur, nil];

}

-(void)viewDidAppear:(BOOL)animated {
    [self.tableView reloadData];
}

- (IBAction)addButtonPressed:(id)sender {
    MagicalCreature *newCreature = [[MagicalCreature alloc]initWithName:self.textView.text withDetail:nil withImage:nil];
    [self.creatures addObject:newCreature];
    self.textView.text = @"";
    [self.tableView reloadData];
    [self.textView resignFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    //[self.textView resignFirstResponder];
    return YES;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.creatures.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
    cell.textLabel.text = creature.name;

    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
    CreatureViewController *destinationVC = segue.destinationViewController;
    destinationVC.title = creature.name;
    destinationVC.creature = creature;

}

@end
