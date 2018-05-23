//
//  Macro.h
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#ifndef Macro_h
#define Macro_h

/**
 *  提供快速生成weakSelf
 */
#define WeakSelf(weakSelf)  __weak __typeof(&*self)weakSelf = self;

/**
 *  提供快速生成strongSelf
 */
#define StrongSelf(strongSelf,weakSelf)  __strong __typeof(&*weakSelf)strongSelf = self;

//typeof(&*weakController) strongController = weakController;




#endif /* Macro_h */
