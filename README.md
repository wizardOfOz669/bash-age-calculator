# Bash Age Calculator 🎂

![Language](https://img.shields.io/badge/Language-Bash-green.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Platform](https://img.shields.io/badge/Platform-Linux%20%26%20macOS-lightgrey.svg)

A simple, fast, and robust command-line tool written in Bash to accurately calculate age from a given birthdate. This script includes input validation and provides a clean, user-friendly experience.

---

## ✨ Features

-   **Interactive Input:** Prompts the user to enter their birthdate.
-   **Robust Validation:** Checks for empty inputs and validates the date format (`YYYY-MM-DD`).
-   **Accurate Calculation:** Uses a clever integer-subtraction method (`YYYYMMDD`) to correctly calculate the age, accounting for whether the birthday has passed in the current year.
-   **Clean & Colored Output:** Uses colors for better readability of prompts and messages.
-   **Lightweight & Portable:** Being a Bash script, it runs on virtually any Linux or macOS system without needing special dependencies.

## 🚀 Usage

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/wizardOfOz669/bash-age-calculator.git
    ```

2.  **Navigate to the directory:**
    ```bash
    cd bash-age-calculator
    ```

3.  **Make the script executable:**
    ```bash
    chmod +x calculate_age.sh
    ```

4.  **Run the script:**
    ```bash
    ./calculate_age.sh
    ```

## Demo

Here is an example of how the script works:
$ ./calculate_age.sh
Please enter your birthdate (YYYY-MM-DD):
1990-03-15
You are 35 years old.

And an example with an invalid date:
$ ./calculate_age.sh
Please enter your birthdate (YYYY-MM-DD):
1990-02-30
Error: Invalid date format. Please use YYYY-MM-DD. Exiting.


## 🧠 How It Works

The script's core logic is based on a simple mathematical trick. It converts both the current date and the user's birthdate into an eight-digit integer format (`YYYYMMDD`).

For example, `2025-06-10` becomes `20250610`.

Then, it subtracts the birthdate integer from the current date integer.

 20250610 (Current Date)
-19900315 (Birth Date)
----------
  350295
The result (`350295`) contains the age in the first one or two digits. By simply removing the last four digits from this result, we get the accurate age (`35`). This method correctly handles all edge cases, such as when the birthday has not yet occurred in the current year.

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
