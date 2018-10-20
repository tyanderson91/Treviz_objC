//
//  Environment.m
//  Treviz
//
//  Created by Tyler Anderson on 8/17/18.
//  Copyright © 2018 Tyler Anderson. All rights reserved.
//

#import "Environment.h"

@implementation CelestialBody

static NSString* _defaultBodyName;
-(id) initWithBodyName:(NSString*)input{
    self = [super init];
    if (self){
        self.name=input;
        [self assignPropertiesByBodyName];
    }
    return self;
}

-(id)init{//default instance initializer
    return [self initWithBodyName:_defaultBodyName];
}

+(void)initialize{
    if (self==[CelestialBody class]){
        _defaultBodyName = @"Earth";
    }
}

-(void) assignPropertiesByBodyName{
    //TODO: use lookup for known planet properties (e.g. with a text file that stores this information)
    if (self.name == Nil){
        //TODO: output actual error
        NSLog(@"ERROR: no planet assigined!");
    }
    else if ([self.name isEqualToString: @"Earth"]){
        self.gravityAcceleration = 9.807;
        self.mass = (5.972e24);
        self.eqRadius = (6378.1e3) ;
        self.polarRadius = (6356.8e3);
    }
    else{
        NSLog(@"ERROR: planet name %@ undiscovered",self.name);
    }
    
}
@end

@implementation Atmosphere

@end

@implementation Environment

@end
