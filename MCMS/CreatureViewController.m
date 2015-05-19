//
//  CreatureViewController.m
//  MCMS
//
//  Created by David Seitz Jr on 5/19/15.
//  Copyright (c) 2015 DavidSights. All rights reserved.
//

#import "CreatureViewController.h"
#import "MagicalCreature.h"

@interface CreatureViewController () <UIGestureRecognizerDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *editBarButton;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *detailTextField;

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

        self.detailTextField.alpha = 0;
        self.nameTextField.alpha = 0;
    }
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
}


- (IBAction)tapDidOccur:(UITapGestureRecognizer *)sender {
    //CGPoint point = [sender locationInView:self.view];

//    if (CGRectContainsPoint(self.detailLabel.frame, point)) {
//        self.detailTextField.alpha = 1;
//        self.nameTextField.alpha = 1;
//        self.nameTextField.text = self.nameLabel.text;
//        self.detailTextField.text = self.detailLabel.text;
//    }

//    if (CGRectContainsPoint(self.nameLabel.frame, point)) {
//        self.nameTextField.alpha = 1;
//        self.detailTextField.alpha = 1;
//        self.nameTextField.text = self.nameLabel.text;
//        self.detailTextField.text = self.detailLabel.text;
//    }
}



-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.nameTextField resignFirstResponder];
    [self.detailTextField resignFirstResponder];

    return YES;
}





@end
