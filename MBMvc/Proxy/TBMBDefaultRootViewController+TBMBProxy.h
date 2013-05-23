/*
 * (C) 2007-2013 Alibaba Group Holding Limited
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 *
 *
 */
//
// Created by <a href="mailto:wentong@taobao.com">文通</a> on 12-12-9 下午9:38.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "TBMBDefaultRootViewController.h"

@interface TBMBDefaultRootViewController (TBMBProxy)
//创建它的代理对象,使调用直接消息化
@property(nonatomic, readonly) id proxyObject;
@end