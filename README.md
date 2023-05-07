# Torc Challenge

This project generates sales receipts based on input data provided in a text file. It calculates taxes and totals for each item and generates a receipt summary.

## Prerequisites

- Ruby (version 2.1 or higher) installed on your system

## Installation

1. Clone or download this repository to your local machine.

2. Navigate to the project directory.

```
cd torc-challenge
```

3. Install the required dependencies by running the following command:

```
bundle install
```

## Usage

1. Place the input data file in the `data` folder. The input file should contain a list of items with their quantities, names, and prices.

   Example input file: `data/first_input.txt`

   ```
   2 book at 12.49
   1 music CD at 14.99
   1 chocolate bar at 0.85
   ```
Note: Each item should be listed on a separate line, with the quantity, name, and price separated by spaces, and the name and price separated by the phrase "at".


2. Open the `main.rb` file located in the `root` folder.

3. Locate the following line of code in the `main.rb` file:

   ```ruby
  exempt_items = File.readlines('data/exempt_items.txt').map(&:strip)
   ```

4. If you have a separate `exempt_items.txt` file that contains a list of exempt items, ensure it is present in the `data` folder. Update the line of code to point to the correct file path if needed.

5. Save the `main.rb` file.

6. Run the following command to execute the code:

```
ruby main.rb data/input.txt
```

Replace `data/input.txt` with the path to your input file.

7. The program will generate the sales receipt output, displaying the item details, sales taxes, and total amount.

## Running Tests

1. To run the tests, execute the following command:

```
bundle exec rspec
```

2. The test suite will run, and the results will be displayed in the terminal. You will see the test coverage summary as well.

## Handling `exempt_items.txt`

The challenge expects that certain products are exempt from taxes. These exempt items include books, food, and medical products. Follow these steps to handle exempt items:

1. Open the `exempt_items.txt` file located in the `data` folder.

2. If the file doesn't exist, create a new text file named `exempt_items.txt` in the `data` folder.

3. Add each exempt item on a separate line in the file, except for books, food, and medical products.

   Example `exempt_items.txt` file:

   ```
   music CD
   movie DVD
   ```

   Please note that exempt items should be added without any specific formatting, with one item per line.

4. Save the `exempt_items.txt` file.

5. Open the `main.rb` file located in the project's root folder.

6. Locate the following line of code in the `main.rb` file:

   ```ruby
   exempt_items = File.readlines('data/exempt_items.txt').map(&:strip)
   ```

7. Save the `main.rb` file.

---

Feel free to customize the README file further to fit your project's specific needs. Make sure to update the file paths and instructions accordingly based on your project structure and requirements.