<?php
// this script fetches and extracts data from a web page, including articles, citations, authors, and media information, and outputs this information to the console. 
// It's a basic example of web scraping in PHP using external libraries.



// Include the Composer autoload file. This allows us to use the libraries we installed via Composer without having to require them manually.
require 'vendor/autoload.php';

// Import the necessary classes from the Guzzle library.
use GuzzleHttp\Client;

function scrapeGLC() {
    // Create a new Guzzle HTTP client.
    $client = new Client();

    // Use the client to send a GET request to the website and get the response.
    $res = $client->request('GET', 'https://news.cision.com/se/glc');

    // Get the body of the response and cast it to a string. This will give us the HTML content of the webpage.
    $html = (string) $res->getBody();

    // Create a DOMDocument instance and load the HTML content.
    $dom = new DOMDocument;
    $dom->loadHTML($html);

    // Use DOMXPath to navigate and query the DOM.
    $xpath = new DOMXPath($dom);
   
    $titles = $xpath->query('//h2'); // Find all <h2> elements (titles).
    $contents = $xpath->query('//p'); // Find all <p> elements (contents).
    $dates = $xpath->query('//time'); // Find all <time> elements (dates).
    $images = $xpath->query('//img/@src');  // Find all <img> elements (images).
    

    $citations = $xpath->query('//blockquote'); // Find all <figure> elements (images).
    $authors = $xpath->query('//figcaption'); // Find all <figcaption> elements (authors).

    $medias = $xpath->query('//div[@class="multimedia-row"]//img');

    // Iterate over the matches for Article titles and print the data
    for ($i = 0; $i < $titles->length; $i++) {

        $title = $titles->item($i)->textContent; // Extract and print title
        $content = $contents->item($i)->textContent; // Extract and print content
        $date = $dates->item($i)->textContent;  // Extract and print date
        $image = $images->item($i)->nodeValue;  // Extract and print image URL
    
        // Print the extracted data
        echo "Title: " . $title . "\n";
        echo "Content: " . $content . "\n";
        echo "Date: " . $date . "\n";
        echo "Image: " . $image . "\n";
        
        // Print a separator for readability.
        echo "\n---\n";
    }

    
    // Iterate over the matches for the Citations and print the data
    echo "Citations here: \n" ;
    for ($i = 0; $i < $citations->length; $i++) {
        $citation = $citations->item($i)->nodeValue;
        $author = $authors->item($i)->textContent;   // Extract and print author

        echo "Citation:" . $citation . '\n';
        echo "Author: " . $author . "\n";
    }

    echo "Media here: \n";
    foreach ($medias as $media) {
        $src = $media->getAttribute('src'); // Get the @src value
        $alt = $media->getAttribute('alt'); // Get the @alt value
    
        echo "Src: $src\n";
        echo "Alt: $alt\n";
    }

}

// Call the scrapeGLC function
scrapeGLC();

?>
