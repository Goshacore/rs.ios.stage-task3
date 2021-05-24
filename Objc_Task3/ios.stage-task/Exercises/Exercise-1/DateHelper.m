#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    
    
    if (monthNumber < 1 || monthNumber > 12 || monthNumber == nil)  {
        
        return nil;
    }
    
    NSArray * arrayMonth = @[  @"January",  @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September",@"October", @"November", @"December" ];
    
      
    
    return  arrayMonth[monthNumber - 1];
    
    
   
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    
    
    
    NSString *dateFormat = @"yyyy-MM-dd'T'HH:mm:ssZ";
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    dateFormatter.dateFormat = dateFormat;
    
    NSDate * dateFromString = [dateFormatter dateFromString:date];
    
 
   
    
    NSCalendar * calendar = [NSCalendar autoupdatingCurrentCalendar];
    
    [calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:800]];
   
    NSDateComponents* components = [calendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay fromDate: dateFromString];
   
   
    
    
    
    return  [components day];
    
   
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    
    
   
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    
    
    dateFormatter.calendar =  [NSCalendar currentCalendar];
    dateFormatter.dateFormat = @"dd";
    dateFormatter.locale = [[NSLocale alloc]initWithLocaleIdentifier:@"ru_RU"];
    dateFormatter.timeZone = NSTimeZone.defaultTimeZone;
   // dateFormatter.timeZone = NSTimeZone.defaultTimeZone;
    
    [dateFormatter setDateFormat:@"EE"];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    NSString * weekDayShorting = [dateFormatter stringFromDate:date];
    
    return weekDayShorting;
  
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    
    
    
    NSDateComponents * comps = [[NSDateComponents alloc]init];
    
    [comps setDay:24];
    [comps setMonth:5];
    [comps setYear:2021];
    NSDate *date1 = [[NSCalendar currentCalendar] dateFromComponents:comps];
    
    
    NSDateComponents * comps2 = [[NSDateComponents alloc]init];
    
    [comps2 setDay:30];
    [comps2 setMonth:5];
    [comps2 setYear:2021];
    NSDate *date2 = [[NSCalendar currentCalendar] dateFromComponents:comps2];
    
    
   // [self compare:date] == NSOrderedDescending)
    
    // [self compare:date] == NSOrderedAscending
    
    if ([date compare: date2]  == NSOrderedDescending){
        
        return NO;
        
        
    } else if ( [date compare:date1] == NSOrderedAscending) {
        
        
        return NO;
    } else {
        
        return YES;
    }
     
    
    
  
    
}

@end
