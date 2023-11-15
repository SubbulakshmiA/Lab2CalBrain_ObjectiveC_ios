//
//  CalBrain.h
//  Lab1Sep21_Subbulakshmi
//
//  Created by user243757 on 9/21/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CalBrain : NSObject

-(void)pushItem : (double)number;
-(double)calculate : (NSString*)opr;
@end

NS_ASSUME_NONNULL_END
