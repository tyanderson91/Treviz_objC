//
//  Vehicle.h
//  Treviz
//
//  Created by Tyler Anderson on 8/9/18.
//  Copyright © 2018 Tyler Anderson. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Aerodynamics.h"
@class Aerodynamics;
@interface Vehicle : NSObject

@property (copy) NSString *name;
@property (strong) Aerodynamics *aero;
@property float mass;

-(id) initWithName:(NSString *) input;
@end
