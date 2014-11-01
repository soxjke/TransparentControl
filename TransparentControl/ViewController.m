//
//  ViewController.m
//  TransparentControl
//
//  Created by Petro Korienev on 11/2/14.
//  Copyright (c) 2014 Petro Korienev. All rights reserved.
//

#import "ViewController.h"
#import "TransparentControl.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *buttonClearColor;
@property (weak, nonatomic) IBOutlet UIButton *buttonAlpha0;
@property (weak, nonatomic) IBOutlet TransparentControl *customButtonAlpha0;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.buttonClearColor addTarget:self action:@selector(touchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    [self.buttonClearColor addTarget:self action:@selector(touchUpOutside:) forControlEvents:UIControlEventTouchUpOutside];
    [self.buttonClearColor addTarget:self action:@selector(touchDown:) forControlEvents:UIControlEventTouchDown];
    
    [self.buttonAlpha0 addTarget:self action:@selector(touchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    [self.buttonAlpha0 addTarget:self action:@selector(touchUpOutside:) forControlEvents:UIControlEventTouchUpOutside];
    [self.buttonAlpha0 addTarget:self action:@selector(touchDown:) forControlEvents:UIControlEventTouchDown];
    
    [self.customButtonAlpha0 addTarget:self action:@selector(touchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    [self.customButtonAlpha0 addTarget:self action:@selector(touchUpOutside:) forControlEvents:UIControlEventTouchUpOutside];
    [self.customButtonAlpha0 addTarget:self action:@selector(touchDown:) forControlEvents:UIControlEventTouchDown];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)touchUpInside:(id)sender
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)touchDown:(id)sender
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)touchUpOutside:(id)sender
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
