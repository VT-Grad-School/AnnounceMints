rails generate scaffold Event title:string start_datetime:datetime end_date:date end_time:time recurring:string location:string description:text url:string

rails generate scaffold Job title:string hirer:string compensation_type:string description:text deadline:datetime url:string contact:string qualifications:text start_date:date duration:string

rails generate scaffold Call title:string organization:string description:text qualifications:text compensation:string url:string contact:string deadline:datetime

rails generate scaffold Announcement title:string description:text contact:string url:string