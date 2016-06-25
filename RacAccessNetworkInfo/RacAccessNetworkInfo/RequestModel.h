//
//  RequestModel.h
//  RacAccessNetworkInfo
//
//  Created by Imanol on 16/6/25.
//  Copyright © 2016年 imanol. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GlobalHeader.h"

@interface RequestModel : NSObject

@property (nonatomic , strong , readonly) RACCommand *requestCommand;

@end
