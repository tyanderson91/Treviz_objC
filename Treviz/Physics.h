//
//  Physics.h
//  Treviz
//
//  Created by Tyler Anderson on 8/17/18.
//  Copyright © 2018 Tyler Anderson. All rights reserved.
//
//TODO: define simple aerothermal analysis
//TODO: define functions for calculating gravity
//TODO: Include body rotations
//TODO: Define different physics engines

#import <Foundation/Foundation.h>

@interface Physics : NSObject
//defines options for physics solvers, including gravity sources, gravity model, aerodynamic model, and aerothermal heating

typedef enum {flatPlanet2D, flatPlanet3D, roundPlanetPlane, roundPlanetEllipsoid, multiPlanetPlane, multiPlanet3D} PhysicsEngine;
typedef enum {none, suttongraves, chapman} Aerothermal;
typedef enum {constAccel, pointMass, biaxial, triaxial, J2, multiPoint} Gravity;

@property PhysicsEngine engine;
@property (nonatomic, setter=useBodyRotation:, getter=getBodyRotation) BOOL bodyRotation;//Whether to include moments and body rotations
//@property BOOL bodyRotation;//Whether to include moments and body rotations
@property Aerothermal aerothermalType;
@property Gravity gravity;
//}


@end
