//
//  NoteSvc.h
//  NoteToSelf_cdilly
//
//  Created by A Student on 5/26/15.
//  Copyright (c) 2015 msse650. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Note.h"

@protocol NoteSvc <NSObject>

-(Note *) addUpdateNote: (Note *) note;
-(Note *) deleteNote: (Note *) note;

@end
