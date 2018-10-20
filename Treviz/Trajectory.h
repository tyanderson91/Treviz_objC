//
//  Trajectory.h
//  Treviz
//
//  Created by Tyler Anderson on 8/15/18.
//  Copyright © 2018 Tyler Anderson. All rights reserved.
//

//TODO: - Implement Runge-Kutta and midpoint integrator methods
//TODO: Validity checking inputs before running trajectory
//TODO: Grab forces and moments from vehicle, aerodynamics, etc.
//TODO: define coordinate frames before running analysis

#import <Foundation/Foundation.h>
#import "Vehicle.h"
#import "Environment.h"
#import "Physics.h"
#import "State.h"
#import <simd/simd.h>
#import "Document.h"
//#import <Accelerate/simd.h>

@interface Trajectory : NSObject

@property (strong) Vehicle* vehicle;
@property (strong) Physics* physics;
@property (strong) Environment* environment;
@property (weak) Document* runningAnalysis;
@property (strong) NSMutableArray* trajectory;

@property State* state0;//beginning state of the vehicle

-(void) runTrajectory;
-(simd_float3) calculateForce:(State*) currentState;
-(State*) TrajectoryODE:(State*) currentState;

//Environment envir;
//State state0[12];
//Terminal_conditions term;
//Guidance guid;
//Navigation nav;
//Control ctrl;
//RunSettings rset;
//Physics phys;


@end
