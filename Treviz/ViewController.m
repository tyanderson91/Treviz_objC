//
//  ViewController.m
//  Treviz
//
//  Created by Tyler Anderson on 9/20/18.
//  Copyright © 2018 Tyler Anderson. All rights reserved.
//

#import "ViewController.h"
#import <Cocoa/Cocoa.h>
#import "Vehicle.h"
#import "Aerodynamics.h"
#import "Trajectory.h"
#import "Document.h"
#import "Physics.h"
#import "Environment.h"
//#import <CorePlot/Coreplot.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


//- (IBAction)buttonRunAnalysis:(id)sender {
//    @autoreleasepool {
//        //Set up analysis
//        Document* analysis1 = [[Document alloc] initWithAnalysisType:singleParam];
//        struct Settings curRunSettings;
//        curRunSettings.dt = 0.1;
//        curRunSettings.t_0 = 0;
//        curRunSettings.t_end = 10;
//        curRunSettings.integrator = euler1;
//        [analysis1 setSolveSettings:curRunSettings];
//
//        //Set up trajectory
//        Trajectory* traj = [[Trajectory alloc] init];
//        State* initState = [[State alloc] init];
//        [initState setMass:10];
//        xSpeed0 = [self.labelXSpeed.stringValue floatValue];
//        ySpeed0 = [self.labelYSpeed.stringValue floatValue];
//
//        [initState setRVecDot:simd_make_float3(xSpeed0,ySpeed0,0)];
//        [traj setState0: initState];
//
//        Physics *curPhys = [[Physics alloc] init];
//        [curPhys setEngine:flatPlanet2D];
//        [curPhys setGravity:constAccel];
//        [curPhys setAerothermalType:none];
//        [curPhys useBodyRotation:NO];
//
//        Environment *curEnvir = [[Environment alloc] init];
//        CelestialBody *earth = [[CelestialBody alloc] initWithBodyName:(@"Earth")];
//        [curEnvir setCenterBody:earth];
//
//        //Set up vehicle
//        Vehicle *ball = [[Vehicle alloc] initWithName:@"Sphere"];
//        Aerodynamics *curAero = [[Aerodynamics alloc] init];
//        curAero.cd=0.47;//= curcd;
//        curAero.area=1.0;
//        [ball setAero: curAero];
//        [ball setMass: 10.0];//kg
//
//        traj.vehicle = ball;
//        traj.physics = curPhys;
//        traj.environment = curEnvir;
//        analysis1.traj = traj;
//        traj.runningAnalysis = analysis1;
//
//        NSLog(@"Wow! a %@",[ball name]);
//        [ball.aero isValid];
//        //NSLog(@"Environment settings \n gravity: %f m/s^2",curEnvir.centerBody.gravityAcceleration);
//
//        [traj runTrajectory];
//        ProcessedState* finalPoint = [[ProcessedState alloc] initWithState: traj.trajectory.lastObject];
//
//        NSLog(@"Final distance:%f",finalPoint.rVec[0]);
//        NSLog(@"Final height:%f",finalPoint.rVec[1]);
//
//        self.labelFinalXDist.stringValue = [NSString stringWithFormat:@"%.3f",finalPoint.rVec[0]];
//        self.labelFinalYDist.stringValue = [NSString stringWithFormat:@"%.3f",finalPoint.rVec[1]];
//
//    }
//}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
