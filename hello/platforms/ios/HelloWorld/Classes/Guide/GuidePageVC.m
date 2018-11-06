//
//  GuidePageVC.m
//  MenkeTeacher
//
//  Created by admin on 2018/8/10.
//

#import "GuidePageVC.h"
#import "GuideView.h"

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height

@interface GuidePageVC ()<UIScrollViewDelegate>


@property (nonatomic, strong) UIScrollView  *scrollView;
@property (nonatomic, strong) UIPageControl *pageControl;
@property (nonatomic, strong) UIButton *btnEnter;

@end

@implementation GuidePageVC



- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    // Do any additional setup after loading the view.
    
    _imageArr = @[@"page1", @"page2", @"page3", @"page4"];
    NSArray * textArr_1 = @[@"放飞梦想1", @"放飞梦想2" ,@"放飞梦想3", @"放飞梦想4"];
    NSArray * textArr_2 = @[@"放飞梦想1", @"放飞梦想\"面对面\"2" ,@"放飞梦想3", @"放飞梦想4"];
    
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0,
                                                                 0,
                                                                 WIDTH,
                                                                 HEIGHT)];
    
    _scrollView.delegate = self;

    _scrollView.showsVerticalScrollIndicator = NO;
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.pagingEnabled = YES;
    _scrollView.bounces = NO;
    _scrollView.contentSize = CGSizeMake(WIDTH * _imageArr.count, HEIGHT);
    
    
    
    for (NSInteger i = 0; i < _imageArr.count; i ++) {
        
        GuideView * gv = [[[NSBundle mainBundle] loadNibNamed:@"GuideView" owner:nil options:nil] lastObject];
        gv.frame = CGRectMake(WIDTH * i, 0, WIDTH, HEIGHT);
        
        gv.Text_top.text = textArr_1[i];
        gv.Text_bottom.text = textArr_2[i];
        gv.icon.image = [UIImage imageNamed:_imageArr[i]];
        
       
        
        if (i == _imageArr.count - 1) {
            
            
            UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake((WIDTH - 130) /2 , HEIGHT - 40 - 60, 130, 40)];
            iv.image = [UIImage imageNamed:@"Button_in"];
            iv.userInteractionEnabled = YES;
            
            UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
            btn.frame = CGRectMake(0, 0, 130, 40);
            [btn setTitle:@"立即体验" forState:UIControlStateNormal];
            btn.titleLabel.font = [UIFont systemFontOfSize: 18.];
            [btn setTitleColor:[UIColor colorWithRed:89.9986/255.0 green:209.997/255.0 blue:205.001/255.0 alpha:1] forState:UIControlStateNormal];
            [btn addTarget:self action:@selector(clickEnter) forControlEvents:UIControlEventTouchUpInside];
            
            [iv addSubview:btn];
            [gv addSubview:iv];
        }
        
        [_scrollView addSubview: gv];
        
    }
    [self.view addSubview:_scrollView];
    
    _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, HEIGHT - 50, WIDTH, 50)];
    _pageControl.numberOfPages = _imageArr.count;
    _pageControl.pageIndicatorTintColor = [UIColor colorWithRed:217.001/255.0 green:217.001/255.0 blue:217.001/255.0 alpha:1];
    _pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:89.9986/255.0 green:209.997/255.0 blue:205.001/255.0 alpha:1];
    
    [self.view addSubview: _pageControl];
    
}

#pragma 实现协议UIScrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSInteger page = scrollView.contentOffset.x / WIDTH;
    
    if(page != _pageControl.currentPage)
    {
        _pageControl.currentPage = page;
    }
}
- (void)clickEnter {
    if (_enterMainPage) {
        _enterMainPage();
        
    }
}
//- (void) onChangePage
//{
//    [_pageControl setCurrentPage:_pageControl.currentPage animated:YES];
//}
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
