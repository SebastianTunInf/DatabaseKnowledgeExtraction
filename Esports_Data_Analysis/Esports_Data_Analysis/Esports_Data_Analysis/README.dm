# Esports Earning History – Data Preparation

## 1. Project Description

This project focuses on preparing and organizing esports earnings data for further analysis and business intelligence visualization.

The dataset contains information about esports prize earnings, rankings, players, teams, video games, and countries over different years.

The original dataset was obtained from Kaggle.

**Dataset source:**

https://www.kaggle.com/datasets/jeanhousseau/esports-earnings-history

## 2. Data Sources

The project uses five original CSV files:

- `esports_country_earnings_by_year.csv.csv`
- `esports_game_earnings_by_year.csv.csv`
- `esports_player_earnings_by_year.csv.csv`
- `esports_team_earnings_by_game.csv.csv`
- `esports_team_earnings_by_year.csv.csv`

These files contain different types of information about esports earnings and rankings.

## 3. Data Preparation

The data preparation process was performed using Python, Pandas, and NumPy in Jupyter Notebook.

The main activities included:

- Loading the five original CSV files.
- Exploring the dataset structure.
- Standardizing column names.
- Removing unnecessary spaces from text fields.
- Correcting numerical data types.
- Recovering missing country codes for Namibia.
- Identifying unknown player names.
- Validating numerical values.
- Checking percentage ranges.
- Detecting duplicate records.
- Reviewing missing values.
- Creating fact tables and dimension tables.
- Exporting the cleaned datasets.

## 4. Missing Values Treatment

Missing values were handled according to the available information.

The following cases were identified in the player dataset:

- `player_name`: 78 missing values. Unknown player names represented by "- -" were converted into null values.
- `age`: 642 missing values. These values were preserved as null because the actual ages were unknown.
- `games`: 3 missing values. These values were also preserved as null.

The country dataset contained records for Namibia with the country code `NA`. This code was recovered using the ISO country code.

No artificial ages or game information were generated, and records were not deleted because of these missing values.

## 5. Data Quality Validation

The five datasets were checked for duplicate records and invalid numerical values.

The validation results showed:

- No complete duplicate records were found.
- No negative numerical values were detected.
- Player percentages were within the range of 0 to 100.
- Team percentages were within the range of 0 to 100.
- Composite keys were validated without duplicate combinations.

The player dataset contains 723 missing values in total, while the other four datasets contain no missing values after the cleaning process.

## 6. Data Model

The project includes five fact tables:

- `FactCountryEarnings`
- `FactGameEarnings`
- `FactPlayerEarnings`
- `FactTeamEarningsYear`
- `FactTeamEarningsGame`

It also includes five dimension tables:

- `DimYear`
- `DimCountry`
- `DimGame`
- `DimPlayer`
- `DimTeam`

These tables organize the information and support the development of the business intelligence dashboard.

## 7. Technologies Used

- Python
- Pandas
- NumPy
- Jupyter Notebook

## 8. Project Structure

The project is organized into the following folders:

- `data/raw/`: Original CSV files.
- `data/processed/`: Cleaned datasets, dimension tables, and quality reports.
- `notebooks/`: Jupyter Notebook containing the data preparation process.
- `reports/`: Project documentation and additional reports.

## 9. Output

The data preparation process generated ten processed CSV files:

**Cleaned datasets:**

- `esports_country_earnings_by_year_clean.csv`
- `esports_game_earnings_by_year_clean.csv`
- `esports_player_earnings_by_year_clean.csv`
- `esports_team_earnings_by_game_clean.csv`
- `esports_team_earnings_by_year_clean.csv`

**Dimension tables:**

- `dim_year.csv`
- `dim_country.csv`
- `dim_game.csv`
- `dim_player.csv`
- `dim_team.csv`

A `data_quality_report.csv` file was also generated to summarize the number of rows, columns, missing values, and duplicate records in each cleaned dataset.

All processed files are stored in the `data/processed/` folder.

These files will be used in the next stage of the project: Interactive Business Intelligence Dashboard Development.