# Silent Dropping of Non-Existent Columns in R Data Frame Subsetting

This repository demonstrates a subtle but problematic behavior in R when subsetting data frames using character vectors. If the character vector contains a column name that does not exist in the data frame, R silently drops those names and returns a subset of the data frame with the existing columns, without any warnings or errors.

This can lead to unexpected results and make debugging difficult, especially in larger programs where the column names might not be immediately apparent.

The `bug.R` file showcases the problem, while `bugSolution.R` provides a solution using more robust subsetting techniques.

## Reproducing the Bug

1. Clone this repository.
2. Open `bug.R` and run the code.
3. Observe that the resulting data frame `subset_df` only contains column 'A', even though 'C' was requested.  No error or warning is generated.