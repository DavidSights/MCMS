//
//  MagicalCreature.m
//  
//
//  Created by David Seitz Jr on 5/19/15.
//
//

#import "MagicalCreature.h"

@implementation MagicalCreature

-(instancetype)initWithName:(NSString *)name withDetail:(NSString *)detail withImage:(UIImage *)image {
    self = [super init];

    if (self) {
        self.name = name;
        self.detail = detail;
        self.image = image;
        self.accessories = [[NSMutableArray alloc] init];
        self.accessories = [NSMutableArray arrayWithObjects:@"Wand", @"Numchuck", @"Beer Mug", @"Mustasche", nil];
    }

    return self;
}

@end
