# Sheger FM Website Testing with Robot Framework

This repository contains automated tests using Robot Framework to verify and validate the Sheger FM website.

## Table of Contents

- [Overview](#overview)
- [Installation](#installation)
- [Setup](#setup)
- [Running Tests](#running-tests)
- [Viewing Test Results](#viewing-test-results)
- [Test Cases](#test-cases)
- [Contributing](#contributing)

## Overview

This project aims to automate the verification, validation, and testing of the Sheger FM website using Robot Framework, a generic open-source automation framework for acceptance testing.

## Installation

To run the tests in this repository, you need to have the following installed:

- Python (version 3.x recommended)
- pip (Python package installer)
- Robot Framework
- SeleniumLibrary (Robot Framework's Selenium-based library)
- ChromeDriver (WebDriver for Chrome, for Selenium)

### Steps to Install:

1. **Python Installation**:
   - Download and install Python from [python.org](https://www.python.org/downloads/).
   
2. **PIP Installation**:
   - PIP usually comes installed with Python. You can verify by running `pip --version` in your terminal/command prompt.
   
3. **Robot Framework Installation**:
   - After installing Python, install Robot Framework using pip:
     ```sh
     pip install robotframework
     ```

4. **SeleniumLibrary Installation**:
   - Install SeleniumLibrary using pip:
     ```sh
     pip install robotframework-seleniumlibrary
     ```

5. **ChromeDriver Installation**:
   - Download ChromeDriver from [ChromeDriver Downloads](https://sites.google.com/a/chromium.org/chromedriver/downloads).
   - Extract the downloaded file and place the `chromedriver` executable in a directory that is in your system's PATH.

## Setup

Before running the tests, configure the necessary details:

1. **Clone the Repository**:
   ```sh
   git clone https://github.com/DanielKinnito/SVVT
   cd SVVT
   ```
2. **Configuration**:
Update the tests/test_shegerfm.robot file with appropriate test cases and configurations relevant to Sheger FM.

## Running Tests
To execute the tests:

1. **Navigate to the project directory**:

```sh
cd SVVT
```
2. **Run the Robot Framework tests**:

```sh
robot -d results tests/test_shegerfm.robot
```
This command runs all the tests defined in test_shegerfm.robot.

## Viewing Test Results
After running the tests, Robot Framework generates output.xml, log.html, and report.html files in your project directory. Open report.html in your browser to view the detailed test execution report.

```sh
start results\report.html
```
## Test Cases
Here are some of the key test cases implemented for the Sheger FM website:

`. **Live Radio Streaming**:

Verify that live radio streaming is accessible from the homepage.
Verify that the play, pause, and stop controls for live streaming work correctly.

2. **On-Demand Audio Playback**:

Verify that users can access on-demand audio playback from the on-demand section.
Verify that the play, pause, fast-forward, and rewind controls work for on-demand audio.

3. **Program Schedules**:

Verify that the daily and weekly program schedules are displayed correctly.
Verify that detailed information about each program is accessible.

4. **Artist Profiles**:

Verify that artist profiles are accessible and display the correct information.

5. **Listener Interaction**:

Verify that the song request form is functional.
Verify that the feedback form is functional and submissions are processed correctly.
For detailed test cases and implementation, refer to the test_shegerfm.robot file in tests.

## Contributing
Contributions are welcome! To contribute:

1. Fork the repository.
2. Create your feature branch.
 ```sh
   git checkout -b feature/new-feature
   ```
3. Commit your changes.
```sh
git commit -am 'Add new feature'
```
4. Push to the branch.
```sh
git push origin feature/new-feature
```
5. Create a new Pull Request.
