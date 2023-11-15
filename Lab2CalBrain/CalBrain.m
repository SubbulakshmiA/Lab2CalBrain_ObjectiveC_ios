//
//  CalBrain.m
//  Lab1Sep21_Subbulakshmi
//
//  Created by user243757 on 9/21/23.
//

#import "CalBrain.h"

@interface CalBrain()
@property (nonatomic)NSMutableArray *items;
@property (nonatomic) NSString *operator;

@end

@implementation CalBrain

-(NSMutableArray*)items{
    if (_items == nil){
       _items = [[NSMutableArray alloc]init];
   }
   return _items;
}

-(void)pushItem : (double)number{
    [self.items addObject:@(number)];
}

-(double)calculate : (NSString*)opr{
    double result=0.0;

    if([opr isEqualToString:@"+"])
    {
        result = [self popItem ]+ [self popItem];
        return result;
    }
    else if([opr isEqualToString:@"-"]){
        double b= [self popItem ];
        double a= [self popItem];
        result = a-b;
        return result;
    }
    else if([opr isEqualToString:@"*"]){
        result = [self popItem ] * [self popItem];
        return result;
    }
        
    else if([opr isEqualToString:@"/"])
    {
        double b= [self popItem ];
        double a= [self popItem];
        if(b !=0)
        {
            result = a/b;
            return result;
        }
        else
            return 0000.0;
    }
            else
        return result;
    
}
-(double)popItem{
    //remove and return the last item of the array
    
    double poppedVal=[[self.items lastObject] doubleValue];
    [self.items removeLastObject];
    return poppedVal;
}

@end
