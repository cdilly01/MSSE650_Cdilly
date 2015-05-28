//
//  ViewController.h
//  NoteToSelf_cdilly
//
//  Created by A Student on 5/26/15.
//  Copyright (c) 2015 msse650. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
 
@property (weak, nonatomic) IBOutlet UITableView *notesView;
@property (strong, nonatomic) IBOutletCollection(UITextView) NSArray *noteText;

- (IBAction)deleteNote:(id)sender;
- (IBAction)addUpdateNote:(id)sender;

@end

