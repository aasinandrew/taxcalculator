//
//  ViewController.m
//  taxcalculator
//
//  Created by Andrew  Nguyen on 6/30/15.
//  Copyright (c) 2015 Andrew Nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;


@property double caTax;
@property double chiTax;
@property double nyTax;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.caTax = 0.075;
    self.chiTax = 0.0925;
    self.nyTax = 0.045;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCalculateButtonTapped:(id)sender {
    double price = [self.priceTextField.text doubleValue];
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", price * self.caTax];
    }
    if (self.segmentedControl.selectedSegmentIndex == 1) {
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", price * self.chiTax];
    }
    if (self.segmentedControl.selectedSegmentIndex == 2) {
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", price * self.nyTax];
    }
}


@end
