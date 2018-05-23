//
//  Notification.h
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#ifndef Notification_h
#define Notification_h


#define LGAddNotification(methodName,key) [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(methodName) name:key object:nil]
#define LGRemoveNotification(methodName) [[NSNotificationCenter defaultCenter]removeObserver:self name:methodName object:nil]



#endif /* Notification_h */
