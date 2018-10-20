//
//  analysisInputsViewController.h
//  temp
//
//  Created by Tyler Anderson on 10/4/18.
//  Copyright © 2018 Tyler Anderson. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "AnalysisInput.h"

@interface analysisInputsViewController : NSViewController <NSOutlineViewDelegate, NSOutlineViewDataSource, NSTableViewDelegate, NSTableViewDataSource>

@property (nonatomic,weak) IBOutlet NSOutlineView* outlineView;
@property (nonatomic,weak) IBOutlet NSTableView* tableView;

@property (nonatomic, strong) NSMutableArray <AnalysisInput*> *inputs;
@property (nonatomic, strong) NSMutableArray <AnalysisInput*>* allParams;


@end

