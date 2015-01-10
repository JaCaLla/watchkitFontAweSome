//
//  ViewController.m
//  watchkitFontAweSome
//
//  Created by JAVIER CALATRAVA LLAVERIA on 10/01/15.
//  Copyright (c) 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

#import "ViewController.h"
#import "NSString+FontAwesome.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblText;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    for (NSString* family in [UIFont familyNames])
    {
        NSLog(@"%@", family);
        
        for (NSString* name in [UIFont fontNamesForFamilyName: family])
        {
            NSLog(@"  %@", name);
        }
    }
    
    //Setup button texts
    NSString *cellText = [NSString stringWithFormat:@"%@ resto", [NSString fontAwesomeIconStringForIconIdentifier:@"fa-cloud-upload"]];
    [self.lblText setText:cellText];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@ resto", [NSString fontAwesomeIconStringForIconIdentifier:@"fa-cloud-upload"]]];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:kFontAwesomeFamilyName size:30] range:NSMakeRange(0, 1)];
    [self.lblText setAttributedText:attributedString];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
