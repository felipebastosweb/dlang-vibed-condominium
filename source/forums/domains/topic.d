module forums.domains.topic;

import std.datetime.date : DateTime;

struct Topic {

    User owner;
    Forum forum;
    string title;
    string slug;
    string description;
    int posts_count;
    DateTime created_at;
    DateTime updated_at;

}
