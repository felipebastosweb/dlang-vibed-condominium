module forums.domain.membership;

import std.datetime.date : DateTime;

struct MemberShip {

    Forum forum;
    User user;
    ForumRole role;
    DateTime created_at;
    DateTime updated_at;

}
