//
//  ViewController.m
//  RacAccessNetworkInfo
//
//  Created by Imanol on 16/6/25.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import "ViewController.h"
#import "GlobalHeader.h"
#import "RequestModel.h"

@interface ViewController ()
@property (nonatomic , strong)RequestModel *requestVM;
@end

@implementation ViewController

-(RequestModel *)requestVM{
    
    if(_requestVM == nil){
        _requestVM = [[RequestModel alloc]init];
    }
    
    return _requestVM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    RACSignal *signal = [self.requestVM.requestCommand execute:nil];
    [signal subscribeNext:^(id x) {
         NSLog(@"接受到的数据：%@",x);
    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
