# Web Scraping with PHP README

This PHP script is designed to scrape data from a web page and store it in a MySQL database. The code uses various libraries and technologies to facilitate the scraping process and ensure data integrity.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Technologies and Dependencies](#technologies-and-dependencies)
- [Code Overview](#code-overview)
- [License](#license)

## Prerequisites

Before using this script, make sure you have the following prerequisites in place:

1. **PHP**: Ensure that you have PHP installed on your system. You can download and install PHP from [php.net](https://www.php.net/).

2. **Composer**: Composer is a dependency manager for PHP. If you don't have Composer installed, you can download it from [getcomposer.org](https://getcomposer.org/download/).

3. **MySQL Database**: You need import the "gcl_data.sql" MySQL database included in the project where we will store the scraped data. Make sure you have the necessary credentials (host, username, password database name) to connect to the database.

## Installation

1. Clone the repository or download the code to your local machine.

2. Open a terminal and navigate to the project directory.

3. Run the following command to install the required dependencies using Composer:

   ```
   composer install
   ```

## Usage

1. Update the `$url` variable in the script with the URL of the web page you want to scrape. For example:

   ```php
   $url = 'https://example.com/news';
   ```

2. Ensure that you have set up a MySQL database to store the scraped data. Update the database credentials in the script:

   ```php
   $dbHost = 'localhost';
   $dbUser = 'your_database_username';
   $dbPassword = 'your_database_password';
   $dbName = 'your_database_name'; // You can import the database named "gcl_data.sql" included this project
   ```

3. Run the script using PHP:

   ```
   php gcl_scrapper_test.php
   ```

4. The script will connect to the specified URL, scrape data, clean and format it, and then insert it into your MySQL database.

## Technologies and Dependencies

The script uses the following technologies, libraries, and dependencies:

- **Guzzle HTTP Client**: Used for making HTTP requests to the web page for data retrieval.
- **DOMDocument and DOMXPath**: These PHP extensions are employed for parsing and navigating the HTML content of the web page.
- **MySQLi Database**: Used for connecting to and interacting with a MySQL database.
- **Regular Expressions (Regex)**: Applied to clean and process text data extracted from the web page.
- **Composer**: Dependency manager for PHP. Required for installing the Guzzle HTTP client.

## Code Overview

- The script starts by creating an HTTP client with Guzzle and connects to the specified URL.

- After a successful HTTP request, it retrieves the HTML content and uses DOMDocument and DOMXPath to navigate and query the DOM.

- The code employs various XPath queries to extract specific elements such as titles, contents, dates, images, citations, authors, and media.

- CleanText function utilizes regex patterns to clean the extracted text and remove unwanted characters and spaces.

- The scraped data is stored in arrays (`$dataArticles`, `$dataCitations`, and `$dataMedias`) before being inserted into a MySQL database.

- Prepared SQL statements are used to insert data into the database, ensuring data security and preventing SQL injection.

- The script includes error handling to handle exceptions during client creation, requests, and database connections.

- Success messages are stored and displayed after data insertion, and duplicates are removed when displaying the messages.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

