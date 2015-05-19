//
//  CreatureViewController.m
//  MCMS
//
//  Created by David Seitz Jr on 5/19/15.
//  Copyright (c) 2015 DavidSights. All rights reserved.
//

#import "CreatureViewController.h"
#import "MagicalCreature.h"

@interface CreatureViewController ()
@property (weak, nonatomic) IBOutlet UIBarButtonItem *editBarButton;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameLabel.text = self.creature.name;
    self.detailLabel.text = self.creature.detail;

}
- (IBAction)editButton:(UIBarButtonItem *)sender {
    if (!self.editing) {
        self.editing = true;
        sender.title = @"Done";
        NSLog(@"Editing set to true.");
    } else {
        NSLog(@"Editing set to false.");
        self.editing = false;
        sender.title = @"Edit";
    }
}




@end
