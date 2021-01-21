package meetups.domains.meetup;

import acccounts.domains.user : User;

import std.datetime : DateTime;

struct Meetup {
    int id;
    User owner;
    string title;
    string slug;
    string description;
    DateTime createdAt;
    DateTime updatedAt;
    MeetupMinute[] minutes;
}

struct MeetupMembership {
    int id;
    Meetup meetup;
    User user;
}

struct MeetupMinute {
    int id;
    User owner;
    Meetup meetup;
    string description;
    DateTime createdAt;
    DateTime updatedAt;
}
