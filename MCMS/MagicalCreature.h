//
//  MagicalCreature.h
//  
//
//  Created by David Seitz Jr on 5/19/15.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MagicalCreature : NSObject

@property NSString *name;
@property NSString *detail;
@property UIImage *image;
@property NSMutableArray *accessories;

-(instancetype)initWithName:(NSString *)name withDetail:(NSString *)detail withImage:(UIImage *)image;

@end
