# Cabin Quest API

This RESTFUL API was built with Ruby on Rails, and Postgres for the databases as the final capstone project at Microverse. With this API, cabins can be added to database and favourites can be added by users.The repo for the front-end application can be accessed [here](https://github.com/SamArsanios/cabin-quest)

## Features

- The database has 3 tables User,Cabins and Favourite
- User table has username, email, and password
- Cabin table has name, address, and region
- Favourite belongs to Cabin and User tables
- Cabins and Favourites can be seen only by authorized users
- JWT is used to authorize users 
- For cross site policy Rack-cors was used  

## Built with

- Ruby
- Ruby on rails
- Postgresql

## Getting Started

- Clone the repo `https://github.com/SamArsanios/cabin-quest`
- cd `into` the project
- To install all dependencies and necessary gems, run `bundle installl`
- Run `rails db:create`
- Run `rails db:migrate`
- Run `rails server` to run rails application in your local server
- To run tests type `bundle exec rspec` on the terminal

## API Endpoints

The API will expose the following RESTful endpoints.
### Local BaseUrl: {Host-URL}/api/v1
### Live BaseUrl: {Host-URL}/api/v1

| API Endpoint                  | Functionality                |
|-------------------------------|------------------------------|
| POST /users                   | Signup                       |
| POST /auth/signin             | Signin                       |
| GET /users                    | Lists all users              |
| GET /users/:id                | Show a user                  |
| DELETE /user/:id              | Delete a user                |
| GET /dashboard/user           | Get user dashboard           |
| POST /cabins                  | Add a new cabin              |
| GET /cabins                   | Lists all cabins             |
| GET /cabins/:id               | Show a cabin                 |
| PUT /cabins/:id               | Update a cabin               |
| DELETE /cabins/:id            | Delete a cabin               |
| POST /favourites              | Add favourites cabin         |
| GET user/:id/favourites       | Get user favourites cabin    |
| DELETE /favourites/:id        | Delete a favourite           |
| POST /image_uploaders         | Add/Upload Image             |

## Author

👤 **Samson Kibrom**

- Github: [@SamArsanios](https://github.com/SamArsanios)
- Twitter: [@SamArsanios](https://twitter.com/SamArsanios)
- Linkedin: [@Samson](https://www.linkedin.com/in/samson-kibrom)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## 👏 Acknowledgements

- [Microverse](issues/)


## 📝 License

MIT License
