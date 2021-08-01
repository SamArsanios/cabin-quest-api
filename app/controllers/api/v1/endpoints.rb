POST - http://localhost:3000/api/v1/users
{
  "user" : {
    "username": "arewedi",
    "firstname": "aron",
    "lastname": "gebreegziabher",
    "email" : "aron@gmail.com",
    "password" : "foobar"
  }
}
# Always Sign in before fetch other wise u will get 401
POST - http://localhost:3000/api/v1/auth/signin
{
  "auth" : {
    "email" : "angelos@gmail.com",
    "password" : "foobar"
  }
}

GET - http://localhost:3000/api/v1/users
{
  "auth" : {
    "email" : "angelos@gmail.com",
    "password" : "foobar"
  }
}

POST - http://localhost:3000/api/v1/cabins
{
  "cabin" : {
    "name" : "wood cabin",
    "country" : "japan",
    "address" : "pixel road",
    "region" : "Asia",
    "location" : "central",
    "user_id" : 1
  }
}

GET - http://localhost:3000/api/v1/cabins#
{
  "cabin" : {
    "name" : "forest cabin",
    "country" : "japan",
    "address" : "pixel road",
    "region" : "Asia",
    "location" : "central",
    "user_id" : 2
  }
}

POST - http://localhost:3000/api/v1/favourites
{
  "favourite" : {
    "user_id" : 2,
    "cabin_id" : 2
  }
}

#gets all cabins in favs
GET - http://localhost:3000/api/v1/favourites

# gets a specific users favs
GET - http://localhost:3000/api/v1/user/1/favourites