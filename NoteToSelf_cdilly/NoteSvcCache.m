//
//  NoteSvcCache.m
//  NoteToSelf_cdilly
//
//  Created by A Student on 5/26/15.
//  Copyright (c) 2015 msse650. All rights reserved.
//

#import "NoteSvcCache.h"

@implementation NoteSvcCache

NSMutableArray *notes = nil;

- (id) init {
    if (self = [super init]) {
        notes = [NSMutableArray array];
        return self;
    }
    return nil;
}


- (Note *) addUpdateNote: (Note *) note {
    if ([notes containsObject:note]){
        NSUInteger index = [notes indexOfObject: note ];
        [notes removeObjectAtIndex: index];
        [notes addObject: note];
    }
    
    else{
        [notes addObject: note];
    }
    
    return note;
}

- (Note *) deleteNote:(Note *)note {
    if ([notes containsObject:note.noteText]){
        NSUInteger index = [notes indexOfObject: note ];
        [notes removeObjectAtIndex: index];
    }
    return note;
}

- (NSMutableArray *) retrieveAllNotes {
    return notes;
}

@end
