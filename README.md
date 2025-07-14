# Property Calculator

A modern, user-friendly Ruby on Rails web application for calculating property purchase and mortgage details. Whether you’re a first-time homebuyer, real estate investor, or agent, Property Calculator helps you make informed decisions by providing instant financial breakdowns for any property.

## Features

- **Multiple Input Modes:** Enter property data via MLS number, direct URL, image upload, or manual entry.
- **Instant Calculations:** Get down payment, loan amount, monthly principal & interest, taxes, insurance, and total monthly payment (PITI) in real time.
- **Responsive UI:** Clean, mobile-friendly interface for use on any device.
- **Data Validation:** Ensures all required fields are filled and values are realistic.
- **Error Handling:** Friendly error messages guide you to correct mistakes.
- **Extensible:** Easily add new features like Google Sheets export, file uploads, or authentication.
- **Open Source:** MIT licensed and open for contributions.

## Why Use Property Calculator?

- **Save Time:** No more manual calculations or spreadsheets.
- **Accuracy:** Uses industry-standard formulas for mortgage and tax calculations.
- **Transparency:** See exactly how your monthly payment is broken down.
- **Flexibility:** Works for any property type and price range.
- **Privacy:** No signup required; your data stays on your device.

## Quickstart

1. **Clone the repo:**
   ```sh
   git clone git@github.com:henrynkoh/property-calculator.git
   cd property-calculator
   ```
2. **Install dependencies:**
   ```sh
   bundle install
   ```
3. **Configure your database:**
   Edit `config/database.yml` with your PostgreSQL username and password.
4. **Set up the database:**
   ```sh
   rails db:create
   rails db:migrate
   ```
5. **Start the server:**
   ```sh
   rails server -p 3001
   ```
6. **Visit the app:**
   Open [http://localhost:3001](http://localhost:3001) in your browser.

## Example Use Cases

- **Homebuyers:** Compare different properties and see how your monthly payment changes with price, taxes, or down payment.
- **Investors:** Quickly analyze rental properties and estimate cash flow.
- **Agents:** Provide clients with instant, professional-looking financial breakdowns.

## Manual & Tutorial

See `MANUAL.md` for a full walkthrough, including screenshots, advanced usage, and troubleshooting.

## Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

- Fork the repo and create your feature branch (`git checkout -b feature/my-feature`)
- Commit your changes (`git commit -am 'Add some feature'`)
- Push to the branch (`git push origin feature/my-feature`)
- Create a new Pull Request

## License

MIT

## Contact

For questions, suggestions, or support, open an issue on GitHub or email the maintainer.
