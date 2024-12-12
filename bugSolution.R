```R
# Safer subsetting using `dplyr` package
library(dplyr)

df <- data.frame(A = 1:3, B = 4:6)
cols_to_subset <- c("A", "C")

# The `select` function from dplyr issues an error if a column is not found
# This makes the code more robust and easier to debug.

subset_df <- df %>% select(all_of(cols_to_subset))

#Alternative solution using base R with error handling:

subset_df <- df[, intersect(names(df), cols_to_subset), drop = FALSE]

#Check if any column names were not found
missing_cols <- setdiff(cols_to_subset, names(df))
if(length(missing_cols) > 0) {
  warning("The following columns were not found in the dataframe:", paste(missing_cols, collapse = ", "))
}
```