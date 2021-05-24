#import "LevelOrderTraversal.h"

NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    
    NSMutableArray<NSNumber*> * levels = [[NSMutableArray alloc]init];
    NSMutableArray<NSNumber*> * subArray1 = [[NSMutableArray alloc]init];
    NSMutableArray * subArray2 = [[NSMutableArray alloc]init];
    NSMutableArray<NSMutableArray*> *result = [NSMutableArray new];
    

    
    
    NSInteger counterLavelsLeft = 0;
    NSInteger counterLavelsReight = 0;
    
    NSInteger counterLavelsLeft111 = 0;
    NSInteger counterLavelsReight111 = 0;
    
    NSInteger ccc = 0;
    NSInteger count = 0;
    
    
    if (tree.count == 0) {
        
        
        return @[];
    }
    
    if ([tree[0] isKindOfClass:NSNumber.class]){
        
        [levels addObject:@0];
        
    }
    
    
    for (int i = 1; i < tree.count; i++) {
      
           
            
        if ([tree[i]isKindOfClass:NSNumber.class] ) {
             
            NSNumber * number = (NSNumber*)tree[0];
            NSNumber * number2 = (NSNumber*)tree[i];
            int a = number.intValue;
            int b = number2.intValue;
            
            [subArray1 addObject: number2];
            
       if (a > b) {
           
           ccc += 1;
           
           counterLavelsLeft += counterLavelsLeft111;
           counterLavelsLeft111 = 0;
           counterLavelsLeft += 1;
           [levels addObject: @(counterLavelsLeft)];
            
       }}
            
            
          if ([tree[i] isKindOfClass:NSNull.class] && [tree[i+1]isKindOfClass:NSNull.class]&& ccc >0 ){
              
         //     if ([tree [i +2] isKindOfClass: NSNumber.class]){
                  
              //    NSNumber * number = (NSNumber*)tree[i + 2];
                  
                 
           //
            //      if (subArray1[1].intValue > number.intValue  ) {
                      
                      counterLavelsLeft111 -= 1;
            //      }
                 
                  
                   
          
              
              
              
            
           
            
        }  if ([tree[i]isKindOfClass:NSNumber.class] ) {
            
            NSNumber * number = (NSNumber*)tree[0];
            NSNumber * number2 = (NSNumber*)tree[i];
            int a = number.intValue;
            int b = number2.intValue;
            
            [ subArray2 addObject:number2];
        
         if (a < b) {
             
             ccc = 0;
      

             counterLavelsReight += counterLavelsReight111;
             counterLavelsReight111 = 0;
             counterLavelsReight += 1;
             [levels addObject: @(counterLavelsReight)];
                
         }
            }  if ([tree[i] isKindOfClass:NSNull.class] && [tree[i+1]isKindOfClass:NSNull.class]&& ccc == 0 ){
                
                counterLavelsReight111 -= 1;
                            
        }
        
        
        
    }
    
    
    
    if (levels.count == 0) { return  @[]; }

    int max = [[levels valueForKeyPath: @"@max.intValue"] intValue];
    
    for (int i = 0; i <= max; i++){
        [result addObject: [NSMutableArray new]];
    }

    for (int i = 0; i < tree.count; i++){
        if (![tree[i] isKindOfClass: NSNull.class]){
            [result[levels[count].intValue] addObject: tree[i]];
            count++;
        }
    }

    
    
    
    
    
    
    
    return result;
}
