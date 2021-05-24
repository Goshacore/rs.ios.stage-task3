#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    
    
    NSInteger result = 0;
    

    for (NSNumber* number in ratingArray) {
        
        NSInteger counter = [ratingArray indexOfObject: number ] + 1;
        
        for (NSInteger i = counter; i < ratingArray.count; i++){
            
            if (number.intValue > ratingArray[i].intValue ) {
                
                for (NSInteger c = i+1; c<ratingArray.count; c ++  ) {
                    
                    
                    if(ratingArray[i].intValue > ratingArray[c].intValue ) {
                        
                        
                        result += 1;
                        
                    }
                }
            
            }
            
            if (number.intValue < ratingArray[i].intValue ) {
                
                for (NSInteger c = i+1; c<ratingArray.count; c ++  ) {
                    
                    
                    if(ratingArray[i].intValue < ratingArray[c].intValue ) {
                        
                        
                        result += 1;
                    }
                }
                
            }
            
        }
          
    }
    
    return result;

    
    
    
    
    
}

@end
