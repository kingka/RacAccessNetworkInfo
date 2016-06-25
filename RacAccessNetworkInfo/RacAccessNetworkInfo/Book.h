//
//  Book.h
//  RacAccessNetworkInfo
//
//  Created by Imanol on 16/6/25.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
@property (nonatomic, strong) NSString *subtitle;
@property (nonatomic, strong) NSString *title;

+ (instancetype)bookWithDict:(NSDictionary *)dict;
@end
