<?php
 // This script scrapes specific data elements from a web page, cleans the data, and stores it in a MySQL database. 
 // It provides feedback on the success or failure of each step in the process and ensures data integrity by handling errors and avoiding duplicate database entries.
 
 
require 'vendor/autoload.php'; // Include the Composer autoload file.
use GuzzleHttp\Client; // Import the necessary classes from the Guzzle library.

# Store the URL we want to scrape in a variable
$url = 'https://news.cision.com/se/glc';

function scrapeGLC($url) {
    try {
        $client = new Client(); // Create a new Guzzle HTTP client to make HTTP requests.
        echo "GuzzleHTTP Client connection was successful...\n"; // Print a success message if the connection succeeds
    } catch (InvalidArgumentException $e) {
        echo "Error: " . $e->getMessage(); // Handle any client creation errors.
        exit;
    }

    try {
        $res = $client->request('GET', $url); // Send a GET request to the specified URL and get the response.
        echo "GET request was successful...\nScraping " . $url . "...\n" ; // Print a success message if the connection succeeds
    } catch (GuzzleHttp\Exception\RequestException $e) {
        echo "Request Error: " . $e->getMessage(); // Handle any request errors, such as connection issues or invalid URLs.
        exit;
    }

    $html = (string) $res->getBody(); // Get the HTML content from the response.

    // Implement a function to clean text and remove unwanted symbols and extra spaces
    $cleaningData = "Cleaning data...\n";
    echo $cleaningData;
    function cleanText($html) {
        $html = preg_replace('/[^\p{L}\p{N}\s]+/u', '', $html); // Remove unwanted characters using regular expressions (regex).
        $html = preg_replace('/\s+/', ' ', $html); // Replace consecutive spaces with a single space.
        $html = trim($html); // Trim leading and trailing spaces.
        return $html;
    }

    //Print a message after cleaning the data.
    $cleanedData = "Data cleaned successfully\n";
    echo $cleanedData;

    // Create a DOMDocument instance and load the HTML content.
    $dom = new DOMDocument;
    libxml_use_internal_errors(true); // Enable error handling for loading HTML.
    $dom->loadHTML($html);
    libxml_use_internal_errors(false); // Disable error handling after loading HTML to avoid outputting error messages.

    // Use DOMXPath to navigate and query the DOM.
    $xpath = new DOMXPath($dom);

    // Use DOMXPath to directly extract data from the HTML structure.

    // Use XPath queries to extract specific elements from the HTML content of the web page
    $titles = $xpath->query('//h2'); // Find all <h2> elements (titles).
    $contents = $xpath->query('//p'); // Find all <p> elements (contents).
    $dates = $xpath->query('//time'); // Find all <time> elements (dates);
    $images = $xpath->query('//img/@src'); // Find all <img> elements (images).
    $citations = $xpath->query('//blockquote'); // Find all <blockquote> elements (citations).
    $authors = $xpath->query('//figcaption'); // Find all <figcaption> elements (authors).
    $medias = $xpath->query('//div[@class="multimedia-row"]//img'); // Find all <img> elements within divs of class "multimedia-row".

    // Initialize arrays to store scrapped elements
    $dataArticles = [];
    $dataCitations = [];
    $dataMedias = [];

    // Extract data for Articles // Iterate over an array of elements, represented by the $titles DOMNodeList. It's essentially going through each article element in the DOM.
    for ($i = 0; $i < count($titles); $i++) {
        $titleText = cleanText($titles[$i]->textContent); // Clean and store title text using cleanText() function.
        $contentText = isset($contents[$i]) ? cleanText($contents[$i]->textContent) : ''; // Clean and store content text using cleanText() function.
        $dateText = isset($dates[$i]) ? cleanText($dates[$i]->textContent) : ''; // Clean and store date text using cleanText() function.
        $imageSrc = isset($images[$i]) ? trim($images[$i]->nodeValue) : ''; // Clean and store image source.

        // Now we will store the cleaned title, content, date, and image source in an associative array, and this array is added to the $dataArticles array
        $dataArticles[] = [
            'title' => $titleText,
            'content' => $contentText,
            'date' => $dateText,
            'image' => $imageSrc,
        ];
    }

    // Extract data for Citations // Iterate over HTML media elements, represented by the $citations DOMNodeList. We are going through each media element in the DOM.
    for ($i = 0; $i < count($citations); $i++) {
        $citationText = cleanText($citations[$i]->textContent); // Clean and store citation text using cleanText() function.
        $authorText = isset($authors[$i]) ? cleanText($authors[$i]->textContent) : ''; // Clean and store author text using cleanText() function.

        // Here we will store the cleaned citation, author, in an associative array, which is added to the dataCitations array
        $dataCitations[] = [
            'citation' => $citationText,
            'author' => $authorText,
        ];
    }

    // Extract data for Media // Iterate over HTML media elements, represented by the $medias DOMNodeList. We are going through each media element in the DOM.
    foreach ($medias as $media) {
        $src = $media->getAttribute('src'); // Get the source attribute of the media element.
        $alt = $media->getAttribute('alt'); // Get the alt attribute of the media element.
        $alt = cleanText($alt); // Clean and store the alt text using cleanText() function.

        // Now we will store the cleaned image source and alt values in an associative array, and this array is added to the $dataMedias array
        $dataMedias[] = [
            'src' => $src,
            'alt' => $alt,
        ];
    }

    // Establish a MySQLi database connection (update with your database credentials)
    $dbHost = 'localhost';
    $dbUser = 'root';
    $dbPassword = 'Testing123';
    $dbName = 'gcl_data';

    $mysqli = new mysqli($dbHost, $dbUser, $dbPassword, $dbName); // Create a database connection object.

    if ($mysqli->connect_error) {
        die("Database Connection Error: " . $mysqli->connect_error); // Handle connection errors.
    } else {
        echo "Successfully connected to " . $dbName . " database.\n";
    }


    // Arrays to store success messages
    $successMessages = [];

    
    // Insert the scraped data into the database
    // Insert articles
    foreach ($dataArticles as $articleData) {
        $insertQuery = "INSERT IGNORE INTO articles (title, content, date, image) VALUES (?, ?, ?, ?)";

        $stmt = $mysqli->prepare($insertQuery); // Prepare an SQL statement for execution.
        
        if (!$stmt) {
            die("Prepare statement error: " . $mysqli->error); // Handle SQL statement preparation errors.
        }

        $stmt->bind_param("ssss", $articleData['title'], $articleData['content'], $articleData['date'], $articleData['image']); // Bind data to SQL statement parameters.

        if (!$stmt->execute()) {
            die("Execute statement error: " . $stmt->error); // Handle SQL statement execution errors.
        } else {
            $successMessages[] = "Data inserted successfully"; // Store success message.
        }
        
        $stmt->close(); // Close the prepared statement.
    }

    // Insert citations
    foreach ($dataCitations as $citationData) {
        $insertQuery = "INSERT IGNORE INTO citations (citation, author) VALUES (?, ?)";

        $stmt = $mysqli->prepare($insertQuery); // Prepare an SQL statement for execution.
        
        if (!$stmt) {
            die("Prepare statement error: " . $mysqli->error); // Handle SQL statement preparation errors.
        }

        $stmt->bind_param("ss", $citationData['citation'], $citationData['author']); // Bind data to SQL statement parameters.

        if (!$stmt->execute()) {
            die("Execute statement error: " . $stmt->error); // Handle SQL statement execution errors.
        } else {
            $successMessages[] = "Data inserted successfully"; // Store success message.
        }
        
        $stmt->close(); // Close the prepared statement.
    }

    // Insert media
    foreach ($dataMedias as $mediaData) {
        $insertQuery = "INSERT IGNORE INTO media (src, alt) VALUES (?, ?)";

        $stmt = $mysqli->prepare($insertQuery); // Prepare an SQL statement for execution.
        
        if (!$stmt) {
            die("Prepare statement error: " . $mysqli->error); // Handle SQL statement preparation errors.
        } else {
            $successMessages[] = "Data inserted successfully"; // Store success message.
        }

        $stmt->bind_param("ss", $mediaData['src'], $mediaData['alt']); // Bind data to SQL statement parameters.

        if (!$stmt->execute()) {
            die("Execute statement error: " . $stmt->error); // Handle SQL statement execution errors.
        } else {
            $successMessages[] = "Data inserted successfully"; // Store success message.
        }
        
        $stmt->close(); // Close the prepared statement.
    }

    // Check for success messages and print them
    if (!empty($successMessages)) {
        echo implode("\n", array_unique($successMessages)) . "\n"; // Display success messages without duplicates.
    }

    // Close the database connection
    $mysqli->close(); 

}

// Call the scrapeGLC function
scrapeGLC($url);



