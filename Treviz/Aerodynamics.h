//
//  Aerodynamics.h
//  Treviz
//
//  Created by Tyler Anderson on 8/14/18.
//  Copyright © 2018 Tyler Anderson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Aerodynamics : NSObject
@property float cd;
@property float cl;
@property float area;

-(void)isValid;


@end
