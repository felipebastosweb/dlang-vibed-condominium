module forums.domain.membership;

import std.datetime.date : DateTime;

/// Data of member of forum
struct ForumMemberShip
{

    Forum forum; /// forum
    User user; /// the user
    ForumRole role; /// the role
    DateTime createdAt; /// datetime
    DateTime updatedAt; ///datetime

}
