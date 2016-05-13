//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

/*

 *  Define your methods here!
 
 */
//Done
-(NSString*)stringWithDeliLine:(NSArray*)deliLine{
    if([deliLine count] == 0){
        NSLog(@"The line is currently empty");
    }
    NSString* place = @"The line is";
        for(NSUInteger i = 0; i< [deliLine count];i++){
            NSUInteger placeInLine = i +1;
            place = [NSString stringWithFormat:@"\n %lu %@", placeInLine, deliLine[i]];
        }
    return place;
}
//Done
-(void)addName:(NSString*)name toDeliLine:(NSMutableArray*)deliLine{
    [deliLine addObject:name];
}
//Done 
-(NSString*)serveNextCustomerInDeliLine:(NSMutableArray*)deliLine{
    NSString* first = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return first;
}


@end
