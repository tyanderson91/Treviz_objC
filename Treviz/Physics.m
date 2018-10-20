//
//  Physics.m
//  Treviz
//
//  Created by Tyler Anderson on 8/17/18.
//  Copyright © 2018 Tyler Anderson. All rights reserved.
//

#import "Physics.h"

@implementation Physics

@synthesize bodyRotation = _bodyRotation;

-(void) useBodyRotation:(BOOL) input{//setter
    _bodyRotation = input;
}

-(BOOL) isBodyRotation{//getter
    return _bodyRotation;
}


@end
