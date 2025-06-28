#!/bin/bash

# Bash Age Calculator by W1z4RD 🧙‍♂️

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Function to validate date format (YYYY-MM-DD)
validate_date() {
    if [[ $1 =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
        date -d "$1" &> /dev/null
        return $?
    else
        return 1
    fi
}

echo -e "${CYAN}🧮 Welcome to Bash Age Calculator!${NC}"
read -p "📅 Please enter your birth date (YYYY-MM-DD): " birthdate

# Validate the date
if ! validate_date "$birthdate"; then
    echo -e "${RED}❌ Invalid date format or invalid date. Please use YYYY-MM-DD.${NC}"
    exit 1
fi

# Get birth timestamp and today's timestamp
birth_ts=$(date -d "$birthdate" +%s)
today_ts=$(date +%s)

# Calculate age in seconds then convert to years
age_seconds=$((today_ts - birth_ts))
age_years=$((age_seconds / 31556952))  # Approximate number of seconds in a year

echo -e "${GREEN}✅ You are $age_years years old.${NC}"
