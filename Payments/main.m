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
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL morePayments = TRUE;
        
        while (morePayments) {
            // generate random number
            int randomPayment = 100 + arc4random_uniform(900);
            
            // begin payment
            NSLog(@"Thank you for shopping at Acme.com Your total today is $%d Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon 4: ApplePay", randomPayment);
            
            // read in response
            int paymentMethod = [InputHandler handleInt];
            
            NSLog(@"You chose: %d", paymentMethod);
            
            PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
            PaypalPaymentService *paypal = [[PaypalPaymentService alloc] init];
            StripePaymentService *stripe = [[StripePaymentService alloc] init];
            AmazonPaymentService *amazon = [[AmazonPaymentService alloc] init];
            ApplePaymentService *apple = [[ApplePaymentService alloc] init];
            
            switch (paymentMethod) {
                case 1:
                    paymentGateway.delegate = paypal;
                    break;
                
                case 2:
                    paymentGateway.delegate = stripe;
                    break;
                    
                case 3:
                    paymentGateway.delegate = amazon;
                    break;
                    
                case 4:
                    paymentGateway.delegate = apple;
                    break;
                
                case 0:
                    morePayments = NO;
                    
                default:
                    break;
            }
            
            
            [paymentGateway ProcessPaymentAmount: randomPayment];
        }
        
    }
    return 0;
}
