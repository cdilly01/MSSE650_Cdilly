//
//  ViewController.m
//  NoteToSelf_cdilly
//
//  Created by A Student on 5/26/15.
//  Copyright (c) 2015 msse650. All rights reserved.
//

#import "ViewController.h"
#import "Note.h"
#import "NoteSvcCache.h"

@interface ViewController ()

@end

@implementation ViewController

NoteSvcCache *noteSvc = nil;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    noteSvc = [[NoteSvcCache alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)deleteNote:(id)sender {
    [self.view endEditing:YES];
    NSLog(@"deleteNote: deleting");
    
    
    [self.notesView reloadData];
    NSLog(@"deleteNote: note deleted");
}

- (IBAction)addUpdateNote:(id)sender {
    [self.view endEditing:YES];
    NSLog(@"addUpdateNote: entering");
    Note *note = [[Note alloc] init];
    note.noteText = [NSString stringWithFormat:@"%@", _noteText];
    [noteSvc addUpdateNote: note];
    
    [self.notesView reloadData];
    NSLog(@"deleteNote: note saved");
}

@end
