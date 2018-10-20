//
//  AnalysisInputs.h
//  temp
//
//  Created by Tyler Anderson on 10/4/18.
//  Copyright © 2018 Tyler Anderson. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AnalysisInput : NSObject

@property (strong,nonatomic) NSString* name;
@property (strong,nonatomic) NSString* value;
@property (strong,nonatomic) NSString* units;
@property (strong,nonatomic) NSString* propertyName;
@property BOOL checkValid;
@property BOOL isValid;
@property BOOL isParam;
@property (strong,nonatomic) NSString* itemType;
@property (strong,nonatomic) NSString* inputType;
@property (nonatomic,strong) NSMutableArray<AnalysisInput *> *children;

//@property (class,nonatomic) NSMutableArray<AnalysisInput *>* allParams;
//+(NSMutableArray<AnalysisInput*>*) getAllParams;

- (instancetype)initWithDictionary:(NSDictionary *) dict;
- (BOOL) hasParams;
+ (NSMutableArray<AnalysisInput *> *)inputList:(NSString *)fileName;

+ (void)addParam:(AnalysisInput*) input;
+ (NSMutableArray<AnalysisInput*>*) getAllParams;

@end

NS_ASSUME_NONNULL_END
