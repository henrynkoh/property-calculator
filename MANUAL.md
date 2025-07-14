# Property Calculator Manual & Tutorial

## Overview

The Property Calculator is a web app designed to help you quickly analyze property purchase scenarios. Whether you’re buying your first home, investing in real estate, or helping clients as an agent, this tool gives you instant, accurate financial breakdowns.

## Input Modes

- **MLS Number:** Enter the MLS number to fetch property data (future feature; currently manual entry).
- **Basic Property Info:** Manually enter listing price, address, number of beds, baths, and square footage.
- **URL:** Enter a property listing URL for reference.
- **Image:** Upload a property image (future feature; currently stores image URL).

## How to Use

1. **Select Input Mode:** Choose from MLS, Basic Info, URL, or Image.
2. **Fill in the Fields:** Depending on the mode, enter the required property details.
3. **Submit:** Click the "Submit" button.
4. **View Results:** The output table will show:
   - Listing Price (%)
   - Purchase Price ($)
   - Down Payment ($)
   - Loan Amount ($)
   - Monthly Principal + Interest (P+I)
   - Monthly Taxes + Insurance
   - Monthly PITI (total payment)

## Output Table Explained

- **Listing Price (%):** Always 100% (full price)
- **Purchase Price ($):** The price you entered or fetched
- **Down Payment ($):** 20% of the purchase price
- **Loan Amount ($):** 80% of the purchase price
- **Monthly P+I ($):** Principal + Interest, calculated at 6.5% annual over 30 years
- **Monthly Taxes+Insurance ($):** 1.25% of price per year, divided by 12
- **Monthly PITI ($):** P+I + Taxes + Insurance + $150 (estimated HOA/other)

## Example Walkthrough

1. Select "Basic Property Info".
2. Enter:
   - Listing Price: 500000
   - Address: 123 Main St
   - Beds: 3
   - Baths: 2
   - Sqft: 1800
3. Click "Submit".
4. See the table update with all calculated values.

## Advanced Usage

- **Google Sheets Export:** Integrate with the `google_drive` gem to export results.
- **Image/File Uploads:** Use ActiveStorage for real file uploads.
- **Authentication:** Add Devise for user accounts and saved searches.
- **Custom Calculations:** Adjust formulas in `app/helpers/calculator_helper.rb`.

## Troubleshooting

- **Form Errors:** Make sure all required fields are filled and valid.
- **Database Errors:** Ensure PostgreSQL is running and credentials are correct.
- **Server Errors:** Check the Rails logs for details.

## FAQ

**Q: Can I use this on my phone?**  
A: Yes! The UI is responsive and works on mobile devices.

**Q: Can I add more fields or calculations?**  
A: Absolutely. Fork the repo and customize as needed.

**Q: Is my data private?**  
A: Yes. No data is sent to third parties.

## Support

- Open an issue on GitHub for bugs or feature requests.
- Email the maintainer for direct support.

## Screenshots

*(Add screenshots here for visual guidance.)* 