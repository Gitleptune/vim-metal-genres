# vim-metal-genres
Vim functions to help with song management

## Functions

| Name              | Usage                                                  |
|-------------------|--------------------------------------------------------|
| GenresFormat      | Remove duplicate lines and format like `Artist - Song` |
| GenresCount       | Count how many songs each band has                     |
| GenresBandReplace | Replace wrong names with correct names                 |
| GenresReplace     | Replace band name with genre                           |
| GenresSort        | Format like `Genre - Amount`                           |
| Genres            | Combine all others                                     |

## Installation

Copy paste into your .vimrc and use with `:call Genres()` or any of the other functions.

## TODO

- Find a way to import playlist titles automagically
- Calculate total genre amount from total
- Don't rely on awk and uniq
- Find way to better manage band genres
