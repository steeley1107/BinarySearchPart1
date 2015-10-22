//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza


- (instancetype)makePizzaWithSize: (PizzaSize)size toppings:(NSArray *)toppings {
        self.size = size;
        self.toppings = [[NSArray alloc] initWithArray: toppings];
    return self;
}


- (instancetype)initPizzaWithSize: (PizzaSize)size toppings:(NSArray *)toppings {
    self = [super init];
    if (self) {
        self.size = size;
        self.toppings = [[NSArray alloc] initWithArray: toppings];
        
    }
    return self;
}



- (void)sizeOfPizza {
    
    switch (self.size) {
        case 0:
            NSLog(@"Pizza size small");
            break;
        case 1:
            NSLog(@"Pizza size medium");
            break;

        case 2:
            NSLog(@"Pizza size large");
            break;
        default:
            break;
    }

}


- (void)listOftoppings {
    
    for (NSString *toppings in self.toppings) {
        NSLog(@"toppings %@",toppings);
    }

}



@end
