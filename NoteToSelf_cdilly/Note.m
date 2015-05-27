//
//  Note.m
//  NoteToSelf_cdilly
//
//  Created by A Student on 5/26/15.
//  Copyright (c) 2015 msse650. All rights reserved.
//

#import "Note.h"

@implementation Note

- (NSString *) description {
    return [NSString stringWithFormat: @"%@",
            _noteText];
}

@end
