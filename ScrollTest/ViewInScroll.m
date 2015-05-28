//
//  ViewInScroll.m
//  ScrollTest
//
//  Created by mac on 15/5/28.
//  Copyright (c) 2015年 Cloudox. All rights reserved.
//

#import "ViewInScroll.h"

@interface ViewInScroll ()

@end

@implementation ViewInScroll

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIImage *image = [UIImage imageNamed:@"18.jpg"];
    self.imageView.image = image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
