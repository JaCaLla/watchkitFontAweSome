//
//  InterfaceController.m
//  watchkitFontAweSome WatchKit Extension
//
//  Created by JAVIER CALATRAVA LLAVERIA on 10/01/15.
//  Copyright (c) 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

#import "InterfaceController.h"
#import "NSString+FontAwesome.h"


@interface InterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *lblText;

@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        
    }
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    
    //Setup button texts
    NSString *cellText = [NSString stringWithFormat:@"%@ upload", [NSString fontAwesomeIconStringForIconIdentifier:@"fa-cloud-upload"]];
    [self.lblText setText:cellText];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@ resto", [NSString fontAwesomeIconStringForIconIdentifier:@"fa-cloud-upload"]]];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:kFontAwesomeFamilyName size:30] range:NSMakeRange(0, 1)];
    [self.lblText setAttributedText:attributedString];
    
    
    
    
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end



