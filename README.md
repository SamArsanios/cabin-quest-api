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
