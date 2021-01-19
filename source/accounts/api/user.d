module accounts.api.user;

import vibe.d;

interface IUserRest {

    @path("/api/v1/users")
    User[] getUsers();

    /*
    Post data as:
        { "username": "felipebastosweb", "email": "felipebastosweb@gmail.com" }
    */
    @path("/api/v1/user")
    @method(HTTPMethod.POST)
    int addUser(string username, string email);

    /*
    Put data as:
        { "username": "felipebastosweb", "email": "felipebastosweb@gmail.com" }
    */
    @path("/api/v1/user/:id")
    @method(HTTPMethod.PUT)
    int changeUser(int id, string username, string email);

}