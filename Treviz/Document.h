//
//  Document.h
//  Treviz
//
//  Created by Tyler Anderson on 9/20/18.
//  Copyright © 2018 Tyler Anderson. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
@class Trajectory;

@interface Document : NSDocument

typedef signed AParam;//Analysis Parameter, basic type for any variable that can be altered for analysis
typedef enum{noParam,singleParam,twoParam,multiParam,monteCarlo,optimize} AnalysisType;

typedef enum {euler1,midpoint,rk4} Integrator;

typedef struct Settings{
    float dt;//seconds
    int t_0;
    int t_end;
    Integrator integrator;
} SolverSettings;

@property AnalysisType atype;
@property (strong) Trajectory* traj;
@property SolverSettings solveSettings;


- (void) performAnalysis;
- (void) plotAnalysis;
- (void) saveResults;
- (id) initWithAnalysisType:(AnalysisType)input;
- (id) initWithTrajectory:(Trajectory*)input;
//RunSettings rset;
//AnalysisType atype = Null;
//Param[50] params;
//Trajectory defaultTraj;
//
//void run();
//void plot();
//void save();
//}

@end

