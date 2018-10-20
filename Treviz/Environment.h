//
//  Environment.h
//  Treviz
//
//  Created by Tyler Anderson on 8/17/18.
//  Copyright © 2018 Tyler Anderson. All rights reserved.
//

#import <Foundation/Foundation.h>
//Planet planet;//can be called "celestial body" once support for sun, moon, etc. comes on
@interface CelestialBody : NSObject
@property NSString* name;
@property float gravityAcceleration;
@property float mass;
@property double eqRadius;
@property double polarRadius;

-(id) initWithBodyName:(NSString*)input;
-(void) assignPropertiesByBodyName;
@end

@interface Atmosphere : NSObject
@property float scaleHeight;
@property float referenceDensity;

@end
//defines the physical environment of the trajectory
@interface Environment : NSObject

@property CelestialBody* centerBody;
@property Atmosphere* atmosphere;

//Atmosphere atmos;
//Figure out how to include solar, epochs, etc.
//}

@end
