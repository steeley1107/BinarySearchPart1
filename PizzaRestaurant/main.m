//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
<<<<<<< HEAD
#import "Pizza.h"
=======
>>>>>>> efdedc127569c1d009acc825e027faf3f31dce26

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
<<<<<<< HEAD
            //Pizza *pizza = [[Pizza alloc] init];
            PizzaSize size =small;
            NSMutableArray *toppings;
            
   
                if ([commandWords[0] isEqualToString:@"small"]) {
                    size = small;
                }
                else if ([commandWords[0] isEqualToString:@"medium"]) {
                    size = medium;
                    
                }
                else if ([commandWords[0] isEqualToString:@"large"]) {
                    size = large;
                }
                
                toppings = [commandWords mutableCopy];
                [toppings removeObjectAtIndex:0];
            

            Pizza *pizza = [[Pizza alloc] initPizzaWithSize:size toppings:toppings];
            
            [pizza sizeOfPizza];
            
            [pizza listOftoppings];
            
            
            
            [pizza makePizzaWithSize:pizza.size toppings:pizza.toppings];

            
=======
>>>>>>> efdedc127569c1d009acc825e027faf3f31dce26
            // And then send some message to the kitchen...
        }

    }
    return 0;
}

