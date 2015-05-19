//
//  MagicalCreature.m
//  
//
//  Created by David Seitz Jr on 5/19/15.
//
//

#import "MagicalCreature.h"

@implementation MagicalCreature

-(instancetype)initWithName:(NSString *)name withDetail:(NSString *)detail{
    self = [super init];

    if (self) {
        self.name = name;
        self.detail = detail;
    }

    return self;
}

@end
