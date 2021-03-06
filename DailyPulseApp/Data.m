//
//  Data.m
//

#import "Data.h"
#import "Common.h"

@implementation Data

- (void)resetData {
    self.username = @"";
    self.submissionId = @"";
    self.officeSiteId = @"";
    self.mobileSiteId = MOBILE_SITE_ID;
    self.userOffice = @"";
    self.accessKeyId = ACCESS_KEY_ID;
    self.secretAccessKey = SECRET_ACCESS_KEY;
    self.userAlreadyLogged = NO;
    self.lastVoteDate = 0.0;
}

- (id)initWithCoder:(NSCoder *)decoder
{
    if ((self = [super init]))
    {
        [self resetData];
        self.username = [decoder decodeObjectForKey:@"username"];
        self.submissionId = [decoder decodeObjectForKey:@"submissionId"];
        self.officeSiteId = [decoder decodeObjectForKey:@"officeSiteId"];
        //self.mobileSiteId = [decoder decodeObjectForKey:@"mobileSiteId"];
        self.userOffice = [decoder decodeObjectForKey:@"userOffice"];
        //self.accessKeyId = [decoder decodeObjectForKey:@"accessKeyId"];
        //self.secretAccessKey = [decoder decodeObjectForKey:@"secretAccessKey"];
        self.userAlreadyLogged = [decoder decodeBoolForKey:@"userAlreadyLogged"];
        self.lastVoteDate = [decoder decodeDoubleForKey:@"lastVoteDate"];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:self.username forKey:@"username"];
    [encoder encodeObject:self.submissionId forKey:@"submissionId"];
    [encoder encodeObject:self.officeSiteId forKey:@"officeSiteId"];
    //[encoder encodeObject:self.mobileSiteId forKey:@"mobileSiteId"];
    [encoder encodeObject:self.userOffice forKey:@"userOffice"];
    //[encoder encodeObject:self.accessKeyId forKey:@"accessKeyId"];
    //[encoder encodeObject:self.secretAccessKey forKey:@"secretAccessKey"];
    [encoder encodeBool:self.userAlreadyLogged forKey:@"userAlreadyLogged"];
    [encoder encodeDouble:self.lastVoteDate forKey:@"lastVoteDate"];
}

@end
