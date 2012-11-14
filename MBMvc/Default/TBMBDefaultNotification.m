//
// Created by <a href="mailto:wentong@taobao.com">文通</a> on 12-11-13 下午1:47.
//


#import "TBMBDefaultNotification.h"


@implementation TBMBDefaultNotification {

@private
    NSString *_name;
    id _body;
    NSUInteger _retryCount;
    NSDictionary *_userInfo;
    id <TBMBNotification> _lastNotification;
    NSUInteger _key;
}
@synthesize name = _name;
@synthesize body = _body;
@synthesize retryCount = _retryCount;
@synthesize userInfo = _userInfo;
@synthesize lastNotification = _lastNotification;
@synthesize key = _key;

- (id)initWithName:(NSString *)name key:(NSUInteger)key {
    self = [super init];
    if (self) {
        _name = name;
        _key = key;
    }

    return self;
}

- (id)initWithName:(NSString *)name key:(NSUInteger)key body:(id)body {
    self = [super init];
    if (self) {
        _name = name;
        _key = key;
        _body = body;
    }

    return self;
}

- (id)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }

    return self;
}

- (id)initWithName:(NSString *)name body:(id)body {
    self = [super init];
    if (self) {
        _name = name;
        _body = body;
    }

    return self;
}

+ (id)objectWithName:(NSString *)name body:(id)body {
    return [[TBMBDefaultNotification alloc] initWithName:name body:body];
}


+ (id)objectWithName:(NSString *)name {
    return [[TBMBDefaultNotification alloc] initWithName:name];
}


+ (id)objectWithName:(NSString *)name key:(NSUInteger)key body:(id)body {
    return [[TBMBDefaultNotification alloc] initWithName:name key:key body:body];
}


+ (id)objectWithName:(NSString *)name key:(NSUInteger)key {
    return [[TBMBDefaultNotification alloc] initWithName:name key:key];
}

- (id <TBMBNotification>)createNextNotification:(NSString *)name {
    TBMBDefaultNotification *notification = [TBMBDefaultNotification objectWithName:name];
    notification.key = self.key;
    notification.lastNotification = self;
    return notification;
}

- (id <TBMBNotification>)createNextNotification:(NSString *)name withBody:(id)body {
    TBMBDefaultNotification *notification = [TBMBDefaultNotification objectWithName:name body:body];
    notification.key = self.key;
    notification.lastNotification = self;
    return notification;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Name:[%@] "
                                              "Body:[%@] "
                                              "Key:[%d] "
                                              "retryCount:[%d] "
                                              "userInfo:[%@] "
                                              "lastNotification:[\n\t%@\n] "
            , _name, _body, _key, _retryCount, _userInfo, _lastNotification];
}


@end