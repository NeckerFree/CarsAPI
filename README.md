![](https://img.shields.io/badge/Microverse-blueviolet)

# Final capstone project: CarsAPI

> This is a back-end application: A database that stores data to handle the car front-end app CRUD operations. 
> The API was set to be accessed only when the user has been authenticated and each of the requests is made with JWT.


## Built With

- Ruby on Rails
- PostgreSql
- FactoryBot - Faker
- Rspec

## Live Demo (if available)

Soon

## Front-end App - Cars ##
[Cars](https://github.com/NeckerFree/Cars/tree/dev)

## Getting Started

To get a local copy up and running follow these simple example steps.
- Clone Repository using
`git clone https://github.com/NeckerFree/CarsAPI.git`
- Move into project directory
`cd CarsAPI`
### Setup Database 
- Make sure that your Postgres database is installed.
-  Open the file config\database.yml
- Modify the connection parameters to point your Postgres      Database:
    `username: [your_user]`
    `password: [your_password]`

- If required drop existing database : `rake db:drop`
- Create databases: `rake db:create`
- Create db structure including tables : `rake db:migrate`
- If required seed initial data (stored in db\seeds.rb file): `rails db:seed`
### Run Tests
- Install rspec: `bundle install`
- Run all tests: `rspec`
- Run all tests and show test documentation: `rspec spec --format documentation`

### Run App
- If required (Not for testing) run `rails server`
- Visit http://localhost:3000/ in your browser!

## Author

👤 **Elio Cortés**

- GitHub: [@NeckerFree](https://github.com/NeckerFree)
- Twitter: [@ElioCortesM](https://twitter.com/ElioCortesM)
- LinkedIn: [elionelsoncortes](https://www.linkedin.com/in/elionelsoncortes/)

<p>&nbsp;<img align="center" src="https://github-readme-stats.vercel.app/api?username=NeckerFree&show_icons=true&locale=en&" alt="NeckerFree" /></p>


👤 **Oscar Bermudez**

- GitHub: [@githubhandle](https://github.com/zkr024)
- Twitter: [@twitterhandle](https://twitter.com/zkr024)
- LinkedIn: [LinkedIn](www.linkedin.com/in/oscar-bermudez-07908222a)

<p>&nbsp;<img align="center" src="https://github-readme-stats.vercel.app/api?username=zkr024&show_icons=true&locale=en&" alt="zkr024" /></p>


👤 **Amrendra K**

- GitHub: [@amrendrakind](https://github.com/amrendrakind)
- Twitter: [@amrendrak_](https://twitter.com/amrendrak_)
- LinkedIn: [amrendraakumar](https://linkedin.com/in/amrendraakumar)

<p>&nbsp;<img align="center" src="https://github-readme-stats.vercel.app/api?username=amrendrakind&show_icons=true&locale=en&" alt="amrendrakind" /></p>

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./LICENSE) licensed.
