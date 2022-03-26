# E-COMMERCE

> this application consists in selling and buying articles online. each user before selling his article will be obliged to create a user account. to create a post there are hamps which are obligatory like the model of your article, the series as well as the state. it can be new or already used...
the user can add favorite items on his card and each item added on the card will be calculated in terms of summation so that the user knows how much it is already. 

![Demo](https://github.com/vic778/e-coomerce/blob/master/screen/demo.gif)

This API is made of three models:
- User model
- Item model
- Card model
- Line_Item Model

The API has the following endpoints:


allow user to authenticate and return a token

`POST /users/sign_in`

allows user to create an account

`POST /users/sign_up`

Edit user informations

`PUT /users/edit`

returns all the items

`GET / instruments`

allows admin to create an item

`POST /instruments/new`

returns a specific item

`GET /instruments/id`

allows admin to edit an item

`PUT /instruments/id`

allows admin to delete an item

`DELETE /instruments/id`

## Built With

- Rails
- Ruby 
- Heroku

## Getting Started

Here are the steps to follow in order to get this project on your local computer.

### Prerequisites

`rails v7.0.2 +`

`ruby v3.0.2 +`

### Setup

clone this repo by typing `git clone https://github.com/vic778/e-coomerce`

### Install

install the dependencies by typing `bundle install`

### Usage

start the local server by running `rails s`

### Testing

run the tests by typing `bundle exec rspec`

### Deployment

N/A

## Author

👤 **Victor Barh**

- GitHub: [@Vvic778](https://github.com/vic778)
- Twitter: [@victoirBarh](https://twitter.com/)
- LinkedIn: [LinkedIn](https://linkedin.com/in/victoir-barh)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used !

## 📝 License

This project is [MIT](lic.url) licensed.
