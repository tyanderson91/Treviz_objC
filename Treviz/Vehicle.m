//
//  Vehicle.m
//  Treviz
//
//  Created by Tyler Anderson on 8/9/18.
//  Copyright © 2018 Tyler Anderson. All rights reserved.
// TODO: implement propulsion class
// TODO: create functionfor calculating propulsion force
// TODO: define structure for mass (vehicle mass, propellant mass 1,2, inertia)

#import "Vehicle.h"

@implementation Vehicle
static NSString *_defaultName;

-(id)initWithName:(NSString *) input {//designated instance initializer
    self = [super init];
    if (self){
        _name = input;
    }
    return self;
}

-(id)init{//default instance initializer
    return [self initWithName:_defaultName];
}

+(void)initialize{
    if (self==[Vehicle class]){
        _defaultName = @"NewVehicle";
    }
}

@end
