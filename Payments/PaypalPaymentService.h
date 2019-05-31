//
//  PaypalPaymentService.h
//  Payments
//
//  Created by Cameron Mcleod on 2019-05-31.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaypalPaymentService : NSObject <PaymentGatewayDelegate>

@end

NS_ASSUME_NONNULL_END
