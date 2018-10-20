//
//  Document.m
//  Treviz
//
//  Created by Tyler Anderson on 9/20/18.
//  Copyright © 2018 Tyler Anderson. All rights reserved.
//

#import "Document.h"

@interface Document ()

@end

@implementation Document

static AnalysisType _defaultAnalysisType;

//typedef signed AParam;//Analysis Parameter, basic type for any variable that can be altered for analysis
//typedef enum{noParam,singleParam,twoParam,multiParam,monteCarlo,optimize} AnalysisType;
+(void) initialize{
    if (self==[Document class]){
        _defaultAnalysisType = noParam;}
}
-(instancetype) initWithAnalysisType:(AnalysisType) input{
    self = [super init];
    if (self){
        _atype = input;
    }
    return self;
}

- (instancetype) initWithTrajectory:(Trajectory*)input{
    self = [super init];
    if (self){
        _traj = input;
    }
    return self;
}

- (void) performAnalysis {
}
- (void) plotAnalysis {
}

- (void) saveResults {
}

+ (BOOL)autosavesInPlace {
    return YES;
}


- (instancetype)init {
    self = [super init];
    if (self) {
        return [self initWithAnalysisType:_defaultAnalysisType];
    }
    return self;
}


- (void)makeWindowControllers {
    // Override to return the Storyboard file name of the document.
    [self addWindowController:[[NSStoryboard storyboardWithName:@"Main" bundle:nil] instantiateControllerWithIdentifier:@"Document Window Controller"]];
}


- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError {
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    [NSException raise:@"UnimplementedMethod" format:@"%@ is unimplemented", NSStringFromSelector(_cmd)];
    return nil;
}


- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError {
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
    [NSException raise:@"UnimplementedMethod" format:@"%@ is unimplemented", NSStringFromSelector(_cmd)];
    return YES;
}


@end
