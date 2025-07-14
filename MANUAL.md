# Property Calculator Manual

A comprehensive guide to using the Property Calculator application for mortgage and investment analysis.

## Table of Contents

1. [Getting Started](#getting-started)
2. [Input Modes](#input-modes)
3. [Mortgage Calculator](#mortgage-calculator)
4. [Understanding Results](#understanding-results)
5. [Advanced Features](#advanced-features)
6. [Troubleshooting](#troubleshooting)
7. [Tips & Best Practices](#tips--best-practices)

## Getting Started

### First Visit

When you first visit the Property Calculator, you'll see a clean, modern interface with several sections:

1. **Header**: Displays the app title and description
2. **Property Information**: Where you input property data
3. **Mortgage Calculator**: For financial calculations
4. **Saved Properties**: Shows your previously saved properties
5. **Features**: Overview of app capabilities

### Quick Start Guide

1. **Choose Input Mode**: Select how you want to enter property data
2. **Enter Property Details**: Fill in the required fields
3. **Save Property**: Click "Save Property" to store the information
4. **Calculate Mortgage**: Use the mortgage calculator for financial analysis
5. **Review Results**: Examine the detailed breakdown of costs

## Input Modes

### 1. MLS Number

**Best for**: Real estate professionals and MLS subscribers

**How to use**:
1. Click the "🔍 MLS Number" card
2. Enter the MLS number in the format provided by your MLS system
3. The system will attempt to auto-populate property details

**Example**: `12345678`

### 2. Manual Entry

**Best for**: Most users, when you have property details handy

**Required fields**:
- **Listing Price**: The asking price of the property
- **Property Address**: Full address including city and state
- **Bedrooms**: Number of bedrooms (can be 0 for studios)
- **Bathrooms**: Number of bathrooms (can include half baths like 2.5)
- **Square Feet**: Total living area in square feet

**Example**:
- Listing Price: $500,000
- Address: 123 Main Street, Anytown, CA 90210
- Bedrooms: 3
- Bathrooms: 2.5
- Square Feet: 2,000

### 3. Property URL

**Best for**: When you have a listing URL from a real estate website

**How to use**:
1. Click the "🔗 Property URL" card
2. Paste the full URL from the property listing
3. The system will attempt to extract property information

**Supported websites**:
- Zillow
- Realtor.com
- Redfin
- MLS listings
- Other major real estate platforms

### 4. Image Upload

**Best for**: When you have property photos but no other data

**How to use**:
1. Click the "📸 Image Upload" card
2. Select an image file from your device
3. The system will attempt to analyze the image for property details

**Supported formats**: JPG, PNG, GIF, WebP
**File size limit**: 10MB

## Mortgage Calculator

### Basic Calculator

The mortgage calculator provides real-time calculations as you adjust parameters:

#### Input Fields

1. **Property Price**: The purchase price of the property
2. **Down Payment %**: Percentage of the purchase price you'll pay upfront
   - Common options: 3.5% (FHA), 5%, 10%, 15%, 20%, 25%, 30%
3. **Loan Term**: Length of the mortgage in years
   - Options: 15 years, 20 years, 30 years
4. **Interest Rate**: Annual interest rate on the loan
   - Current rates: 5.5% - 8.0%
5. **Property Tax Rate**: Annual property tax rate as a percentage
   - Default: 1.25% (varies by location)
6. **Insurance Rate**: Annual insurance rate as a percentage
   - Default: 0.5% (varies by property type and location)
7. **Monthly HOA Fees**: Monthly homeowners association fees
   - Default: $0 (if applicable)

#### Calculation Results

The calculator provides three detailed breakdowns:

##### 1. Loan Summary
- **Purchase Price**: Total property cost
- **Down Payment**: Amount paid upfront
- **Loan Amount**: Amount borrowed
- **Loan Term**: Length of mortgage
- **Interest Rate**: Annual interest rate

##### 2. Monthly Payments
- **Principal & Interest**: Monthly mortgage payment
- **Property Taxes**: Monthly tax payment
- **Insurance**: Monthly insurance payment
- **HOA Fees**: Monthly association fees
- **Total Monthly Payment**: Complete monthly cost (PITI)

##### 3. Annual Costs
- **Annual Property Taxes**: Total yearly taxes
- **Annual Insurance**: Total yearly insurance
- **Annual HOA Fees**: Total yearly association fees
- **Total Interest Paid**: Total interest over loan term

## Understanding Results

### PITI Breakdown

PITI stands for Principal, Interest, Taxes, and Insurance:

- **Principal**: The portion of your payment that reduces the loan balance
- **Interest**: The cost of borrowing money
- **Taxes**: Property taxes paid to local government
- **Insurance**: Homeowners insurance and possibly PMI

### Key Metrics

#### Debt-to-Income Ratio (DTI)
Calculate your DTI by dividing your total monthly debt payments by your gross monthly income. Most lenders prefer DTI below 43%.

#### Price per Square Foot
Divide the purchase price by the square footage to compare properties.

#### Monthly Payment Affordability
A general rule: your housing payment should not exceed 28% of your gross monthly income.

## Advanced Features

### Real-Time Calculations

The calculator updates automatically as you change values, providing instant feedback on how different scenarios affect your payments.

### Property Comparison

Save multiple properties to compare:
1. Enter and save different properties
2. Use the mortgage calculator for each
3. Compare monthly payments, total costs, and affordability

### Export Options

Coming soon:
- PDF reports
- Google Sheets integration
- Email summaries

## Troubleshooting

### Common Issues

#### "Please fill in all required fields"
**Solution**: Ensure all fields marked with * are completed with valid data.

#### "Invalid MLS number"
**Solution**: Check the MLS number format and ensure it's from a supported MLS system.

#### "Calculation not working"
**Solution**: 
1. Verify all numeric fields contain valid numbers
2. Check that percentages are reasonable (0-100%)
3. Ensure property price is greater than $0

#### "Page not loading"
**Solution**:
1. Check your internet connection
2. Try refreshing the page
3. Clear browser cache and cookies

### Error Messages

#### Validation Errors
- **Price must be greater than 0**: Enter a valid property price
- **Address can't be blank**: Provide a complete property address
- **Invalid URL format**: Check the URL format for property listings

#### Calculation Errors
- **Division by zero**: Check that all required fields have valid values
- **Invalid interest rate**: Ensure interest rate is between 0% and 100%

## Tips & Best Practices

### For Homebuyers

1. **Start with your budget**: Use the calculator to determine what you can afford
2. **Compare scenarios**: Try different down payment amounts and loan terms
3. **Factor in all costs**: Don't forget about closing costs, moving expenses, and maintenance
4. **Consider future changes**: Think about how your income might change

### For Investors

1. **Calculate cash flow**: Subtract monthly payments from potential rental income
2. **Consider appreciation**: Factor in potential property value increases
3. **Account for vacancies**: Plan for periods when the property might be empty
4. **Include maintenance costs**: Budget for repairs and regular maintenance

### For Real Estate Agents

1. **Provide instant analysis**: Use the calculator during client meetings
2. **Compare properties**: Show clients how different properties stack up
3. **Explain costs clearly**: Use the detailed breakdown to educate clients
4. **Save calculations**: Keep track of different scenarios for follow-up

### General Tips

1. **Use realistic rates**: Research current interest rates and tax rates in your area
2. **Consider PMI**: If down payment is less than 20%, factor in Private Mortgage Insurance
3. **Plan for emergencies**: Don't max out your budget - leave room for unexpected expenses
4. **Get pre-approved**: Use the calculator to prepare for mortgage pre-approval

## Support

If you need help with the Property Calculator:

1. **Check this manual** for detailed instructions
2. **Review the FAQ** for common questions
3. **Contact support** at support@propertycalculator.com
4. **Report bugs** through the GitHub issue tracker

## Updates

The Property Calculator is regularly updated with new features and improvements. Check the changelog for the latest updates and enhancements. 