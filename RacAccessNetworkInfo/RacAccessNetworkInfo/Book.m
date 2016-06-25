//
//  Book.m
//  RacAccessNetworkInfo
//
//  Created by Imanol on 16/6/25.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import "Book.h"

@implementation Book


+ (instancetype)bookWithDict:(NSDictionary *)dict
{
    Book *book = [[Book alloc] init];
    
    book.title = dict[@"title"];
    book.subtitle = dict[@"subtitle"];
    return book;
}
@end
