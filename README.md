# Property Calculator

A modern, user-friendly Ruby on Rails web application for calculating property purchase and mortgage details. Whether you're a first-time homebuyer, real estate investor, or agent, Property Calculator helps you make informed decisions by providing instant financial breakdowns for any property.

## Features

- **Multiple Input Modes**: Enter property data via MLS number, direct URL, image upload, or manual entry
- **Instant Calculations**: Get down payment, loan amount, monthly principal & interest, taxes, insurance, and total monthly payment (PITI) in real time
- **Responsive UI**: Clean, mobile-friendly interface for use on any device
- **Data Validation**: Ensures all required fields are filled and values are realistic
- **Error Handling**: Friendly error messages guide you to correct mistakes
- **Extensible**: Easily add new features like Google Sheets export, file uploads, or authentication
- **Open Source**: MIT licensed and open for contributions

## Why Use Property Calculator?

- **Save Time**: No more manual calculations or spreadsheets
- **Accuracy**: Uses industry-standard formulas for mortgage and tax calculations
- **Transparency**: See exactly how your monthly payment is broken down
- **Flexibility**: Works for any property type and price range
- **Privacy**: No signup required; your data stays on your device

## Quickstart

### Prerequisites

- Ruby 3.2.0 or higher
- Rails 8.0.2
- PostgreSQL

### Installation

1. Clone the repo:
```bash
git clone git@github.com:henrynkoh/property-calculator.git
cd property-calculator
```

2. Install dependencies:
```bash
bundle install
```

3. Configure your database:
   - Edit `config/database.yml` with your PostgreSQL username and password

4. Set up the database:
```bash
rails db:create
rails db:migrate
```

5. Start the server:
```bash
rails server -p 3001
```

6. Visit the app:
   - Open http://localhost:3001 in your browser

## Example Use Cases

### Homebuyers
Compare different properties and see how your monthly payment changes with price, taxes, or down payment.

### Investors
Quickly analyze rental properties and estimate cash flow.

### Agents
Provide clients with instant, professional-looking financial breakdowns.

## Manual & Tutorial

See [MANUAL.md](MANUAL.md) for a full walkthrough, including screenshots, advanced usage, and troubleshooting.

## Features in Detail

### Input Modes

1. **MLS Number**: Enter a Multiple Listing Service number for automatic property lookup
2. **Manual Entry**: Input property details manually (price, address, beds, baths, sqft)
3. **Property URL**: Paste a property listing URL for automatic data extraction
4. **Image Upload**: Upload property images for analysis (coming soon)

### Calculations

The app calculates:
- Down payment amount and percentage
- Loan amount
- Monthly principal and interest payment
- Property taxes (monthly and annual)
- Insurance costs (monthly and annual)
- HOA fees
- Total monthly payment (PITI)
- Total interest paid over loan term

### Responsive Design

The interface adapts seamlessly to:
- Desktop computers
- Tablets
- Mobile phones
- Different screen orientations

## Development

### Running Tests
```bash
rails test
```

### Code Quality
```bash
bundle exec rubocop
bundle exec brakeman
```

### Database
```bash
rails db:migrate
rails db:seed
```

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

For support, email support@propertycalculator.com or create an issue in this repository.

## Roadmap

- [ ] Google Sheets export functionality
- [ ] User authentication and saved calculations
- [ ] Advanced investment analysis tools
- [ ] Integration with real estate APIs
- [ ] Mobile app version
- [ ] Multi-language support
