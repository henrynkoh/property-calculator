# Quickstart Guide: Property Calculator

Welcome to the Property Calculator! This guide will help you get up and running in minutes.

## 1. Clone the Repository

Open your terminal and run:
```sh
git clone git@github.com:henrynkoh/property-calculator.git
cd property-calculator
```

## 2. Install Dependencies

Make sure you have Ruby and Bundler installed. Then run:
```sh
bundle install
```

## 3. Configure the Database

Edit `config/database.yml` and enter your PostgreSQL username and password.  
Example:
```yaml
username: your_postgres_user
password: your_postgres_password
```

## 4. Create and Migrate the Database

Run:
```sh
rails db:create
rails db:migrate
```

## 5. Start the Rails Server

Run:
```sh
rails server -p 3001
```

## 6. Open Your Browser

Go to [http://localhost:3001](http://localhost:3001)

## 7. Using the App

- Select your preferred input mode (MLS, Basic Info, URL, Image).
- Enter the required property details.
- Click "Submit" to see the financial breakdown in the table below.

## 8. Troubleshooting

- If you see a database error, make sure PostgreSQL is running and your credentials are correct.
- For missing gems, run `bundle install` again.
- For other issues, check the logs or open an issue on GitHub.

## 9. Next Steps

- Explore the codebase and try customizing the app.
- See `MANUAL.md` for advanced features and tips.
- Share your feedback or contribute improvements!

You’re ready to use the Property Calculator! 