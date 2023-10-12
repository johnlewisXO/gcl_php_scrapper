<?php
// This code is a simple web scraping script that fetches the HTML content of a specific website and outputs it to the screen. 
// It's a basic example of how to retrieve and display web page content using PHP.


// The URL of the website
$url = "https://news.cision.com/se/glc";

// Use file_get_contents to fetch the raw HTML content
$html_content = file_get_contents($url);

// Display the HTML content
echo $html_content;
?>
