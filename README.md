
## Service Name

**Continuous CURL Request Service**

## Description

This service allows you to run a PHP script that makes a cURL request to a specific address at a scheduled interval. The service ensures that only one instance of the script is running at a time and prevents starting a new instance if the script is already running.

## Prerequisites

- **Operating System**: Ubuntu (or any Linux-based system)
- **PHP**: Make sure you have PHP installed on your server to execute the PHP script.

## Getting Started

1. **Clone the Repository**

   Clone this GitHub repository to your local machine or server:

   ```bash
   git clone https://github.com/EbrahimAminiSharifi/ubuntuService.git
   ```

2. **Configure the Service**

   Open the `curl_request.sh` script in a text editor and update the `url` variable with the desired address that you want to call using cURL. Save the changes.

   ```bash
   # Set the URL to make the cURL request
   url="https://example.com/api/endpoint"
   ```

   Note: Replace `"https://example.com/api/endpoint"` with the actual URL you want to call using cURL.

3. **Set Execute Permissions**

   Make the scripts executable using the following commands:

   ```bash
   chmod +x curl_request.sh
   chmod +x check_and_run.sh
   ```

## Usage

To run the Continuous CURL Request Service, follow these steps:

1. Open a terminal or SSH session.

2. Navigate to the directory where the scripts are located:

   ```bash
   cd /path/to/your-repo
   ```

3. Run the `check_and_run.sh` script:

   ```bash
   ./check_and_run.sh
   ```

   The `check_and_run.sh` script will continuously check for the running instance of `curl_request.sh` every 20 minutes. It will ensure that only one instance is running at a time and prevent starting a new instance if the script is already running.

4. The output will show whether the `curl_request.sh` script is already running or if it has been started successfully. The service will continue to run in the background, making cURL requests to the specified URL at the scheduled interval.

## Troubleshooting

If you encounter any issues or errors, please check the following:

- Ensure that you have the appropriate permissions to execute the scripts.

- Make sure PHP is installed and accessible in your system's PATH.

- Verify that the `curl_request.sh` script contains the correct URL to make the cURL request.

- Check if there are any issues with the cURL request response or if the target URL is accessible.

## Contributing

We welcome contributions and bug reports! If you find any issues or have improvements to suggest, please create an issue or submit a pull request on GitHub.

## License

This project is licensed under the MIT License. See the file for details.
Available for anyone to use, modify, and distribute, you can choose an open-source license that aligns with your intentions.

---

Feel free to customize this documentation with additional information or specific usage instructions for your service.
