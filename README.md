# vim-metal-genres
Vim functions to help with song management

## Functions

| Name              | Usage                                                  |
|-------------------|--------------------------------------------------------|
| GenresFormat      | Remove duplicate lines and format like `Artist - Song` |
| GenresBandReplace | Replace wrong names with correct names                 |
| GenresReplace     | Replace band name with genre                           |
| GenresBandsCount  | Count how many songs each band has                     |
| GenresCount       | Count how many songs there are from each genre         |
| GenresSort        | Format like `Genre - Amount`                           |
| Genres            | Combine all others                                     |

## Installation

Copy paste into your .vimrc and use with `:call Genres()` or any of the other functions.

## TODO

- [ ] Find a way to import playlist titles automagically
- [ ] Don't rely on `awk`, `sort` and `uniq`
- [ ] Find way to better manage band genres
- [x] Calculate total genre amount from total
