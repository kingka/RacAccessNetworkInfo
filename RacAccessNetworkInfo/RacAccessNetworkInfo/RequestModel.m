//
//  RequestModel.m
//  RacAccessNetworkInfo
//
//  Created by Imanol on 16/6/25.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import "RequestModel.h"
#import "Book.h"

@interface RequestModel ()



@end

@implementation RequestModel


-(instancetype)init{
    
    if (self = [super init]){
        [self setup];
    }
    
    return self;
}


-(void)setup{

    _requestCommand = [[RACCommand alloc]initWithSignalBlock:^RACSignal *(id input) {
        
        RACSignal *signal =  [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
            
            AFHTTPSessionManager *mrg = [AFHTTPSessionManager manager];
            [mrg GET:@"https://api.douban.com/v2/book/search" parameters:@{@"q":@"美女"} progress:^(NSProgress * _Nonnull downloadProgress) {
                
            } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                
                NSLog(@"成功");
                NSArray *dictArr = responseObject[@"books"];
                
                NSArray *modelArr = [[dictArr.rac_sequence map:^id(id value) {
                    
                    return [Book bookWithDict:value];
                }] array];
                
                [subscriber sendNext:modelArr];
                
            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                NSLog(@"失败%@",error);
                [subscriber sendNext:nil];
            }];
            
            return nil;
        }];
        
        return signal;
    }];
    

}

@end
