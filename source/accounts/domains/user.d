import std.datetime.date : DateTime;
import std.datetime.systime : SysTime, Clock;


struct User {
    int id;
    string username;
    string email;
    UserRole[] userRoles;
    DateTime createdAt;
}

struct UserSecret {
    User user;
    string password;
    DateTime createdAt;
}

struct UserHistory {
    int id;
    UserSecret userSecret;
    DateTime updatedAt;
}

struct UserRole {
    int id;
    User user;
    Role role;
}


struct UserAccess {
    int id;
    User user;
    string ip;
    string userAgents;
    UserRole userRole;
    DateTime createdAt;

    this(User user, string ip, string userAgents, UserRole userRole) {
        this.user = user;
        this.userAgents = userAgents;
        this.userRole = userRole;
        //TODO: conversão não testada (PT-BR)
        const SysTime currentTime = Clock.currTime();
        this.createdAt = currentTime.toUTC();
    }
}