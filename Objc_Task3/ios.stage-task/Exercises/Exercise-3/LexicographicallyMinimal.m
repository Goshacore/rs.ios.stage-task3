#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
   
    
    
    NSMutableString * string3 = [[NSMutableString alloc]init];
    NSMutableString * string11 = [[NSMutableString alloc]initWithString:string1];
    NSMutableString * string22 = [[NSMutableString alloc]initWithString:string2];
    
    NSInteger iiii = string11.length;
    
    
    for (NSInteger i = 0; i < string1.length +3 ; i++) {
        
        
        NSInteger ooo = string11.length;
        NSInteger aaa = string22.length;
        
        
        NSRange range = NSMakeRange(0, 1);
        NSRange range4 = NSMakeRange(0, 1);
        
        
        
        if ( [string11 isEqual:@""] || [string22 isEqual:@""]) {
            
            break;
            
        }
        
        
        NSString * pp = [string11 substringWithRange:range];
        NSString * bb = [string22 substringWithRange:range];
        
        NSComparisonResult result = [pp compare:bb];
        if ( result == NSOrderedAscending) {
            
            [string3 appendString:pp];
            [string11 deleteCharactersInRange:range];
            
            
            
        } else if ( result == NSOrderedDescending) {
            
            [string3 appendString:bb];
            [string22 deleteCharactersInRange:range4];
            
            
        } else if ( result ==  NSOrderedSame) {
            
            
            
            
            for (NSInteger c = 1; c <= aaa  || c < ooo  ; c++) {
                
                
                NSInteger counter = c  ;
                
                
                if ( aaa == 1 || ooo == 1) {
                    
                    counter -= 1;
                    
                }
                
                
                NSRange range2 = NSMakeRange(counter, 1);
                
                
                
                NSString* jj = [string11 substringWithRange:range2];
                NSString* kk = [string22 substringWithRange:range2];
                
                
                NSComparisonResult result2 = [jj compare:kk];
                
                
                if ( result2 == NSOrderedAscending) {
                    
                    [string3 appendString:pp];
                    [string11 deleteCharactersInRange:range];
                    break;
                    
                    
                } else if ( result == NSOrderedDescending) {
                    
                    [string3 appendString:bb];
                    [string22 deleteCharactersInRange:range4];
                    break;
                
                }
                    if (c == aaa -1 || c == ooo -1 ) {
                        
                        if (aaa == ooo) {
                            
                            [string3 appendString:pp];
                            [string11 deleteCharactersInRange:range];
                            break;
                        } else if (ooo > aaa){
                            
                            [string3 appendString:pp];
                            [string11 deleteCharactersInRange:range];
                            break;
                            
                        } else if (aaa > ooo) {
                            
                            [string3 appendString:bb];
                            [string22 deleteCharactersInRange:range4];
                            break;
                            
                        }
                        NSLog (@"JJJ");
                        
                        
                    } else if ( (c == aaa || c == ooo )) {
                        
                        
                        if (aaa == ooo) {
                            
                            [string3 appendString:pp];
                            [string11 deleteCharactersInRange:range];
                            break;
                        } else if (ooo > aaa){
                            
                            [string3 appendString:pp];
                            [string11 deleteCharactersInRange:range];
                            break;
                            
                        } else if (aaa > ooo) {
                            
                            [string3 appendString:bb];
                            [string22 deleteCharactersInRange:range4];
                            break;
                            
                        }
                        
                        
                        
                    }

                
            
                
            }
            
        }
        
    }
    
    
    
    if (![string11 isEqual:@""]) {
        
        while(![string11 isEqual:@""]) {
             
            NSRange range = NSMakeRange(0, 1);
            
            NSString * pp = [string11 substringWithRange:range];
            
            [string3 appendString:pp];
            [string11 deleteCharactersInRange:range];
             
           }
        
        
    } else if (![string22 isEqual:@""]) {
        
        while(![string22 isEqual:@""]) {
             
            NSRange range = NSMakeRange(0, 1);
            
            NSString * pp = [string22 substringWithRange:range];
            
            [string3 appendString:pp];
            [string22 deleteCharactersInRange:range];
             
           }
        
        
    }
    
    
        
  
    
    
    return string3;
}

@end
