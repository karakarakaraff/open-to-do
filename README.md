# Open To Do API

Open To Do is an externally usable API for a basic to-do list application. Users can create accounts, create to-do lists with items, update their lists and items, and delete lists, items or user accounts — all from the command line.

Open To Do uses [bcrypt](https://github.com/codahale/bcrypt-ruby) and Rails' `has_secure_password` feature to convert each password into a password digest. The `--digest` flag is then used in the [curl](https://curl.haxx.se/) requests below.

## Usage examples
Create a user.
```
curl -d "user[username]=<your username>" -d "user[password]=<your password>" http://localhost:3000/api/users
```

View a list of all users.
```
$ curl --digest -u username:password http://localhost:3000/api/users
```

Create a to-do list.
```
$ curl --digest -u username:password -d "list[title]=<your list title>" -d "list[private]=<true or false>" http://localhost:3000/api/users/<user ID here>/lists
```

Create a to-do item.
```
$ curl --digest -u username:password -d "item[body]=<your item body>" -d "item[complete]=false" http://localhost:3000/api/lists/<list ID here>/items
```

Update a to-do list.
```
$ curl -X PUT --digest -u username:password -d "list[<attribute to update>]=<your update>" http://localhost:3000/api/users/<user ID here>/lists/<list ID here>
```

Update a to-do item.
```
$ curl -X PUT --digest -u username:password -d "item[<attribute to update]=<your update>" http://localhost:3000/api/items/<item ID here>
```

Delete a to-do item.
```
$ curl --digest -u username:password -X DELETE http://localhost:3000/api/items/<item ID here>
```

Delete a to-do list. (This will also delete all associated to-do items.)
```
$ curl --digest -u username:password -X DELETE http://localhost:3000/api/users/<user ID here>/lists/<list ID here>
```

Delete a user. (This will also delete all associated to-do lists and their items.)
```
$ curl --digest -u username:password -X DELETE http://localhost:3000/api/users/<user ID here>
```

---
This project was built for [Bloc's Web Development Program](https://www.bloc.io/).
