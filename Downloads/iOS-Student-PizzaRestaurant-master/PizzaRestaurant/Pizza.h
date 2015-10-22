//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject


typedef NS_ENUM (NSInteger , PizzaSize) {
    small,
    medium,
    large
};
@property (nonatomic, strong) NSArray *toppings;
@property (nonatomic) PizzaSize size;

- (instancetype)initPizzaWithSize: (PizzaSize)size toppings:(NSArray *)toppings;

- (instancetype)makePizzaWithSize: (PizzaSize)size toppings:(NSArray *)toppings;

- (void)sizeOfPizza;

- (void)listOftoppings;


@end
