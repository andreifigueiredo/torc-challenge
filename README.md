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

If you have a separate `exempt_items.txt` file that contains a list of exempt items, follow these steps:

1. Create a text file named `exempt_items.txt`.

2. Add each exempt item on a separate line in the file.

   Example `exempt_items.txt` file:

   ```
   book
   chocolate
   pills
   ```

3. Place the `exempt_items.txt` file in the `data` folder.

4. Open the `main.rb` file located in the `root` folder.

5. Locate the following line of code in the `main.rb` file:

   ```ruby
   exempt_items = File.readlines('data/exempt_items.txt').map(&:strip)
   ```

6. Save the `main.rb` file.

7. Run the program as mentioned in the "Usage" section, and the code will use the `exempt_items.txt` file to determine exempt items for tax calculations.

---

Feel free to customize the README file further to fit your project's specific needs. Make sure to update the file paths and instructions accordingly based on your project structure and requirements.