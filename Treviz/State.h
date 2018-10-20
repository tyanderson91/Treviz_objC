//
//  State.h
//  Treviz
//
//  Created by Tyler Anderson on 8/22/18.
//  Copyright © 2018 Tyler Anderson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <simd/simd.h>

@interface State : NSObject <NSCopying>

@property simd_float3 rVec;
@property simd_float3 rVecDot;
@property simd_quatf rotVec;
@property simd_quatf rotVecDot;
@property float mass;

@end

@interface ProcessedState : State <NSCopying>

-(id) initWithState:(State *)input;
-(id) copyWithZone:(NSZone *)zone;

//Entry vehicle properties
@property float altitude;
@property float downrange;
@property float crossrange;
@property float flightPathAngleInertial;
@property float speedInertial;
@property float flightPathAngleRelative;//flight path angle relative to moving planet surface
@property float speedRelative;//Speed relative to moving planet surface
@property float headingAngleRelative;
@property float headingAngleInertial;
//Orbital parameters
@property float argumentPeriapsis;
@property float longAscendingNode;
@property float trueAnomaly;
@property float inclination;
@property float eccentricity;
@property float semiMajorAxis;
@property float latitude;
@property float longitude;

@end
