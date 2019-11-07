module meetups.domains.meetup;

import vibe.d;

struct Meetup {

    BsonObjectID id;
    string title;
    string description;
    DateTime day;
    DateTime created_at;
    Datetime updated_at;
    
}

struct MeetupMinute {
    
    BsonObjectID id;
    Meetup meetup;
    string content;
    DateTime created_at;
    Datetime updated_at;
    
}

