//
//  ViewController.m
//  CircularPorgressView
//
//  Created by Pankaj Chhikara on 27/05/15.
//  Copyright (c) 2015 pankajchhikara. All rights reserved.
//

#import "ViewController.h"
#import "CircularProgressView.h"



@interface ViewController (){
   CircularProgressView *cpv,*cpv2,*cpv3;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   cpv = [[CircularProgressView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-140,self.view.frame.size.height/2-130, 130, 130)];
    
    cpv.animate=@YES;
    cpv.progress=0.90;
   // cpv.progressColor=[UIColor redColor];
    //cpv.progressBackgroundColor=[UIColor blackColor];
    cpv.showBackground=@YES;
    cpv.type=FlatStyle;
    [self.view addSubview:cpv];
//
//    
    cpv2 = [[CircularProgressView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2+10, self.view.frame.size.height/2-130, 140, 140)];
    cpv2.animate=@YES;
    cpv2.progress=0.50;
    //cpv2.progressColor=[UIColor redColor];
   // cpv2.progressBackgroundColor=[UIColor blackColor];
    cpv2.showBackground=@YES;
    cpv2.type=KnobStyle;
    [self.view addSubview:cpv2];
    
    cpv3 = [[CircularProgressView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-140, self.view.frame.size.height/2+20, 140, 140)];
    cpv3.animate=@YES;
    cpv3.progress=0.20;
    cpv3.showBackground=@YES;
    cpv3.type=OutlineStyle;
    [self.view addSubview:cpv3];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)slider:(UISlider *)sender {
    cpv.progress=sender.value;
    cpv2.progress=sender.value;
    cpv3.progress=sender.value;
    
}

- (IBAction)segment:(UISegmentedControl *)sender {
    
    switch (sender.selectedSegmentIndex) {
        case 0:
            cpv.progress=0.0;
            cpv2.progress=0.0;
            cpv3.progress=0.0;
            break;
        case 1:
            cpv.progress=0.2;
            cpv2.progress=0.2;
            cpv3.progress=0.2;
            break;
        case 2:
            cpv.progress=0.4;
            cpv2.progress=0.4;
            cpv3.progress=0.4;
            break;
        case 3:
            cpv.progress=0.6;
            cpv2.progress=0.6;
            cpv3.progress=0.6;
            break;
        case 4:
            cpv.progress=0.8;
            cpv2.progress=0.8;
            cpv3.progress=0.8;
            break;
        case 5:
            cpv.progress=1.0;
            cpv2.progress=1.0;
             cpv3.progress=0.8;
            break;
        default:
            break;
    }
    
    
}
@end
