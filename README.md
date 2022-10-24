# Blog-App

The Blog app will be a classic example of a blog website. I will create a fully functional website that will show the list of posts and empower readers to interact with them by adding comments and liking posts.


## Screenshot
<p align="center"><img src="./app/assets/images/Budget-App.png" alt="Desktop Snapshot" /></>


## Built With

- Ruby on Rails
- PostgreSQL
- Bootstrap
- SCSS, CSS
- Gems (Gemfile)
- Linters (Rubocop)
- VSCode
- Git Bash
- GitHub

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Laptop or Desktop
- Web Browser
- Ruby (installed and set up)
- IDE (preferably Visual Studio Code)
- Programming Knowledge

### Installation, Setup and Usage

 **Clone this [repo](https://github.com/udeaghad/recipe-app)**
- Navigate to the correct directory **cd Budget-app** (case sensitive)
- Run **bundle install** in your terminal (in case you need to update the gems run **bundle update**)
- Please run **npm init -y** and **npm install** if you want to test the css linters
- To setup database and tailwind run the following commands:
  - `Inside of config folder create local_env.yml file and add key-value pairs for db access (e.g. BUDGET_APP_DATABASE_USERNAME: yourusername and BUDGET_APP_PASSWORD: yourpassword`
  - `Go to my config/application.rb file and copy the code (before_configuration block) and paste it to your file.`
  - In your terminal run the following two commands:
    - `rails db:create`
    - `rails db:migrate`
- Run **rails s** in your terminal to start the server.
- Enter **http://localhost:3000/ or localhost:3000** on your browser to view page
- **Congratulations! App should run successfully.**


## Author

👤 **Said Rasinlic**

- GitHub: [@GitHub/SaidRasinlic](https://github.com/SaidRasinlic)
- Twitter: [@Twitter/SaidRasinlic](https://twitter.com/SaidRasinlic)
- LinkedIn: [@LinkedIn/SaidRasinlic](https://www.linkedin.com/in/SaidRasinlic)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse 

## 📝 License

This project is [MIT](LICENSE) licensed.
