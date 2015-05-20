//
//  CreatureViewController.m
//  MCMS
//
//  Created by David Seitz Jr on 5/19/15.
//  Copyright (c) 2015 DavidSights. All rights reserved.
//

#import "CreatureViewController.h"
#import "MagicalCreature.h"

@interface CreatureViewController () <UIGestureRecognizerDelegate, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *editBarButton;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *detailTextField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameLabel.text = self.creature.name;
    self.detailLabel.text = self.creature.detail;
    self.imageView.image = self.creature.image;
}


- (IBAction)editButton:(UIBarButtonItem *)sender {
    if (!self.editing) {
        self.editing = true;
        sender.title = @"Done";
        NSLog(@"Editing set to true.");
        self.detailTextField.alpha = 1;
        self.nameTextField.alpha = 1;
        self.nameTextField.text = self.nameLabel.text;
        self.detailTextField.text = self.detailLabel.text;
    } else {
        NSLog(@"Editing set to false.");
        self.editing = false;
        sender.title = @"Edit";
        self.nameLabel.text = self.nameTextField.text;
        self.detailLabel.text = self.detailTextField.text;

        self.creature.name = self.nameLabel.text;
        self.creature.detail = self.detailLabel.text; 

        self.detailTextField.alpha = 0;
        self.nameTextField.alpha = 0;
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        return self.creature.accessories.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AccessoriesCellID"];
    cell.textLabel.text = [self.creature.accessories objectAtIndex:indexPath.row];

    return cell;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.nameTextField resignFirstResponder];
    [self.detailTextField resignFirstResponder];

    return YES;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //None of this gets called because of error: -[CreatureViewController tapDidOccur:]: unrecognized selector sent to instance 0x7fa788f6b710

    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    NSLog(@"THIS IS BEING CALLED");
}


@end
