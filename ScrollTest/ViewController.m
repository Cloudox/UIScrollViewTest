//
//  ViewController.m
//  ScrollTest
//
//  Created by mac on 15/5/28.
//  Copyright (c) 2015年 Cloudox. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //初始化ScrollView,设定位置
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
    self.scrollView.backgroundColor = [UIColor greenColor];
    //设置显示内容的大小，这里表示可以下滑十倍原高度
    self.scrollView.contentSize = CGSizeMake(320, 460*10);
    //设置当滚动到边缘继续滚时是否像橡皮经一样弹回
    self.scrollView.bounces = YES;
    //设置滚动条指示器的类型，默认是白边界上的黑色滚动条
    self.scrollView.indicatorStyle = UIScrollViewIndicatorStyleDefault;//还有UIScrollViewIndicatorStyleBlack、UIScrollViewIndicatorStyleWhite
    //设置是否只允许横向或纵向（YES）滚动，默认允许双向
//    self.scrollView.directionalLockEnabled = YES;
    //设置是否采用分页的方式
//    self.scrollView.pagingEnabled = YES;
    //设置是否允许滚动
//    self.scrollView.scrollEnabled = NO;
    //设置是否可以缩放
    self.scrollView.maximumZoomScale = 2.0;//最多放大到两倍
    self.scrollView.minimumZoomScale = 0.5;//最多缩小到0.5倍
    //设置是否允许缩放超出倍数限制，超出后弹回
    self.scrollView.bouncesZoom = YES;
    //设置委托
    self.scrollView.delegate = self;
    
    [self.view addSubview:self.scrollView];
    
    //创建两个label显示在ScrollerView中，第二个要滚动才能看见
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 320, 40)];
    label.backgroundColor = [UIColor yellowColor];
    label.text = @"Study UIScrollView";
    [self.scrollView addSubview:label];
    UILabel *secondLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 800, 320, 40)];
    secondLabel.backgroundColor = [UIColor yellowColor];
    secondLabel.text = @"Next Label";
    [self.scrollView addSubview:secondLabel];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIScrollViewDelegate
//返回缩放时所使用的UIView对象
- (UIView*)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return scrollView;
}

//开始缩放时调用
- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(UIView *)view{
    
}

//结束缩放时调用，告知缩放比例
- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(CGFloat)scale{
    
}

//已经缩放时调用
- (void)scrollViewDidZoom:(UIScrollView *)scrollView{
    
}

//确定是否可以滚动到顶部
- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView{
    return YES;
}

//滚动到顶部时调用
- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView{
    
}

//已经滚动时调用
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
}

//开始进行拖动时调用
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    
}

//抬起手指停止拖动时调用，布尔值确定滚动到最后位置时是否需要减速
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    
}

//如果上面的方法决定需要减速继续滚动，则调用该方法，可以读取contentOffset属性，判断用户抬手位置（不是最终停止位置）
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    
}

//减速完毕停止滚动时调用，这里的读取contentOffset属性就是最终停止位置
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
}

@end
