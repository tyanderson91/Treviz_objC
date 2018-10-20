//
//  State.m
//  Treviz
//
//  Created by Tyler Anderson on 8/22/18.
//  Copyright © 2018 Tyler Anderson. All rights reserved.



#import "State.h"

@implementation State
// Contains the basic information required to extract the position and velocity of a rigid body in a given reference frame
/*
-(void)print{
    NSLog(@"Position: %@\t%@",self.rVec);
    NSLog(@"Velocity: @&",self.rVecDot);
}*/

// TODO: - Create functions for processing state (geodetic altitude (height), geocentric altitude, downrange, crossrange, orbital elements)
// TODO: check copy function, make sure it works for all possible versions of state
// TODO: make different state definitions based on physics type (e.g. body rotations)

-(id) init {
    self.rVecDot = simd_make_float3(0,0,0);
    self.rVec = simd_make_float3(0,0,0);
    float f0 = 0;
    simd_quatf rotVec = simd_quaternion(f0,f0,f0,f0);
    self.rotVec = rotVec;
    self.mass = 0;
    
    return self;
}
- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    State* newState = [[State alloc] init];
    float newMass = _mass;
    newState.rVecDot = self.rVecDot;
    newState.rVec = self.rVec;
    newState.rotVec = self.rotVec;
    newState.mass = newMass;
    return newState;
}

@end

/*
 Processed state is a subclass of state that contains all of the processed state information used for plotting
 */
@implementation ProcessedState

static State* _defaultState;

+(void) initialize{
    if (self==[State class]){
        _defaultState = [[State alloc] init];
    }
}
-(id) initWithState:(State*)input{
    self = [super init];
    if (self){
        self.rVecDot = input.rVecDot;
        self.rVec = input.rVec;
        self.rotVec = input.rotVec;
        self.mass = input.mass;
    }
    return self;
}

-(id) init{
    return [self initWithState:_defaultState];
}

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    State* newState = [super init];
    newState.rVecDot = self.rVecDot;
    newState.rVec = self.rVec;
    newState.rotVec = self.rotVec;
    newState.mass = self.mass;
    return newState;
}

@end
