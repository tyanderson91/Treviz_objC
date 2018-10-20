//
//  Trajectory.m
//  Treviz
//
//  Created by Tyler Anderson on 8/15/18.
//  Copyright © 2018 Tyler Anderson. All rights reserved.

#import "Trajectory.h"
#import <simd/simd.h>
#import "State.h"

@implementation Trajectory

static State* currentState;

-(simd_float3) calculateForce:(State*) currentState{
    simd_float3 forceVec = simd_make_float3(0,0,0);
    //Gravity
    if (_physics.gravity == constAccel){
        forceVec+=simd_make_float3(0,-1*_environment.centerBody.gravityAcceleration,0);
    }
    return forceVec;
}

-(State*)TrajectoryODE:(State*) currentState{
    //simd_float3 position = currentState.rVec;
    simd_float3 velocity = currentState.rVecDot;
    float mass = currentState.mass;
    
    simd_float3 force = [self calculateForce:currentState];
    simd_float3 accel = force/mass;
    
    //Only do the below if solver setting is Euler
    simd_float3 deltaVelocity = accel;
    simd_float3 deltaPosition = velocity*self.runningAnalysis.solveSettings.dt;
    
    State* nextState = [currentState copyWithZone:nil];
    nextState.rVec += deltaPosition;
    nextState.rVecDot += deltaVelocity;
    
    return nextState;
}


-(void) runTrajectory{
    //do validity checking for physics, environment, vehicle, state, etc.
    struct Settings cursettings = self.runningAnalysis.solveSettings;
    int totalPoints = cursettings.t_end/cursettings.dt;//Useful for pre-allocating array
    float t  = (float)cursettings.t_0;
    float dt = cursettings.dt;
    
    _trajectory[0] = [_state0 copyWithZone:nil];
    int trajectoryIndex = 1;
    NSLog(@"Running trajectory");
    while (t <= cursettings.t_end){
        State* newState = [self TrajectoryODE:_trajectory[trajectoryIndex-1]];
        [_trajectory addObject: newState];
        trajectoryIndex++;
        t+=dt;
        if (trajectoryIndex == totalPoints/2){NSLog(@"50 pct complete");}
    }
    if (t>cursettings.t_end){NSLog(@"Trajectory complete on exit code 0");}
    
}

-(id)init{
    //    self.state0 = NSArray = [mass0];
    simd_float3 zeros = simd_make_float3(0,0,0);
    State* state0 = [[State alloc] init];
    state0.rVec = zeros;
    state0.rVecDot = zeros;
    
    self.state0 = state0;
    self.trajectory = [[NSMutableArray alloc] init];
    [self.trajectory addObject:state0];
    
    return self;
}

@end
