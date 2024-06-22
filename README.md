# ShegerFM Website Testing with Robot Framework

This repository contains automated tests using Robot Framework to verify and validate the ShegerFM website.

## Table of Contents

- [Overview](#overview)
- [Installation](#installation)
- [Setup](#setup)
- [Running Tests](#running-tests)
- [Viewing Test Results](#viewing-test-results)
- [Folder Structure](#folder-structure)
- [Contributing](#contributing)

## Overview

This project aims to automate the verification, validation, and testing of the ShegerFM website using Robot Framework, a generic open-source automation framework for acceptance testing.

## Installation

To run the tests in this repository, you need to have the following installed:

- Python (version 3.x recommended)
- pip (Python package installer)
- Robot Framework
- SeleniumLibrary (Robot Framework's Selenium-based library)
- ChromeDriver (WebDriver for Chrome, for Selenium)

### Steps to Install:

1. **Python Installation:**
   - Download and install Python from [python.org](https://www.python.org/downloads/).
   
2. **PIP Installation:**
   - PIP usually comes installed with Python. You can verify by running `pip --version` in your terminal/command prompt.
   
3. **Robot Framework Installation:**
   - After installing Python, install Robot Framework using pip:
     ```
     pip install robotframework
     ```

4. **SeleniumLibrary Installation:**
   - Install SeleniumLibrary using pip:
     ```
     pip install robotframework-seleniumlibrary
     ```

5. **ChromeDriver Installation:**
   - Download ChromeDriver from [ChromeDriver Downloads](https://sites.google.com/a/chromium.org/chromedriver/downloads).
   - Extract the downloaded file and place the `chromedriver` executable in a directory that is in your system's PATH.

## Setup

Before running the tests, configure the necessary details:

1. **Clone the Repository:**
   ```sh
   git clone https://github.com/DanielKinnito/SVVT
   cd SVVT
   ```

2. **Configuration:**
   - Update the `tests/test_shegerfm.robot` file with appropriate test cases and configurations relevant to ShegerFM.

## Running Tests

To execute the tests:

1. Navigate to the project directory:
   ```
   cd SVVT
   ```

2. Run the Robot Framework tests:
   ```
   robot tests/test_shegerfm.robot
   ```

This command runs all the tests defined in `test_shegerfm.robot`.

## Viewing Test Results:

After running the tests, Robot Framework generates output.xml, log.html, and report.html files in your project directory.
Open report.html in your browser to view the detailed test execution report.

## Folder Structure

```sh
shegerfm-robot-tests/
│
├── tests/
│   ├── test_suite.robot    # Main test suite file
│   ├── test_case_1.robot   # Additional test cases
│   ├── test_case_2.robot   # Additional test cases
│   └── ...
├── report.html
├── log.html
├── output.xml
└── README.md               # Repository README file
```

## Contributing

Contributions are welcome! To contribute:

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/new-feature`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/new-feature`).
5. Create a new Pull Request.
