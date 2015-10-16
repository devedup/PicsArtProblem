//
//  ViewController.m
//  TestShare
//
//  Created by David Casserly on 16/10/2015.
//  Copyright © 2015 DevedUpLtd. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (IBAction)showShareSheet:(id)sender {
    UIImage *google = [UIImage imageNamed:@"google"];
    NSArray *activityItems = @[google];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
    activityViewController.completionWithItemsHandler = ^(NSString *activityType, BOOL completed, NSArray *returnedItems, NSError *activityError) {

        NSLog(@"completion");
    };
    [self presentViewController:activityViewController animated:YES completion:nil];
}

@end
