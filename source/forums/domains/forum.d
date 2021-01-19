module forums.domains.forum;

import  accounts.domains.user : User;
import  forums.domains.topic : Topic;
import  forums.domains.membership : Membership;

import std.datetime.date : DateTime;

/// Discursion forum
struct Forum {
    int id; /// id
    // Relations
    User owner; /// creator of forum
    Topic[] topics; /// all topics
    Membership[] members; /// members of forum
    // Attributes
    string title; /// title of forum
    string slug; /// url slug
    string description; /// description of forum
    DateTime createdAt; /// timestamp
    DateTime updatedAt; /// timestamp

}
