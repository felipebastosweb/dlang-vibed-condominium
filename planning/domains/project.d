module planning.domains.project;

import std.datetime.date : Date, DateTime;

struct Project {

    string title;
    string description;
    Date start_at;
    Date finish_at;
    Datetime created_at;
    Datetime updated_at;
    
}

