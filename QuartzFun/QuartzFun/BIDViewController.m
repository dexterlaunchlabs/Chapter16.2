//
//  BIDViewController.m
//  QuartzFun
//
//  Created by Dexter Launchlabs on 7/31/14.
//  Copyright (c) 2014 Dexter Launchlabs. All rights reserved.
//

#import "BIDViewController.h"
#import "BIDGLFunView.h"
#import "BIDConstants.h"
@interface BIDViewController ()

@end

@implementation BIDViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeColor:(id)sender { UISegmentedControl *control = sender;
    NSInteger index = [control selectedSegmentIndex];
    BIDGLFunView *glView = (BIDGLFunView *)self.view;
    switch (index) {
        case kRedColorTab:
            glView.currentColor = [UIColor redColor]; glView.useRandomColor = NO;
            break;
        case kBlueColorTab:
            glView.currentColor = [UIColor blueColor]; glView.useRandomColor = NO;
            break;
        case kYellowColorTab:
            glView.currentColor = [UIColor yellowColor]; glView.useRandomColor = NO;
            break;
        case kGreenColorTab:
            glView.currentColor = [UIColor greenColor]; glView.useRandomColor = NO;
            break;
        case kRandomColorTab: glView.useRandomColor = YES; break;
        default:
            break;
    } }

- (IBAction)changeShape:(id)sender {
    UISegmentedControl *control = sender; [(BIDGLFunView *)self.view setShapeType:[control selectedSegmentIndex]];
    if ([control selectedSegmentIndex] == kImageShape) _colorControl.hidden = YES;
    else
        _colorControl.hidden = NO;
}
@end
