//
//  MagicalCreature.h
//  
//
//  Created by David Seitz Jr on 5/19/15.
//
//

#import <Foundation/Foundation.h>

@interface MagicalCreature : NSObject

@property NSString *name;
@property NSString *detail;

-(instancetype)initWithName:(NSString *)name withDetail:(NSString *)detail;

@end
