//
//  main.m
//  Payments
//
//  Created by Cameron Mcleod on 2019-05-31.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // generate random number
        int randomPayment = 100 + arc4random_uniform(900);
        
        // begin payment
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%d Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", randomPayment);
        
        // read in response
        int paymentMethod = [InputHandler handleInt];
        
        NSLog(@"You chose: %d", paymentMethod);
        
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        
        [paymentGateway ProcessPaymentAmount: randomPayment];
        
        
    }
    return 0;
}
