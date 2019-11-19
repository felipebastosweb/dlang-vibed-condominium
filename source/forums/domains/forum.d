module forums.domains.forum;

import std.datetime.date : DateTime;

struct Forum {

    string title;
    string slug;
    string description;
    DateTime created_at;
    DateTime updated_at;
    //TODO: owner
    //TODO: members

}
