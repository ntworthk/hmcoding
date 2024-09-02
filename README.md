# Meet the songs

We have been given a dataset about the songs and albums released by
Taylor Swift.

<img src="https://images.seattletimes.com/wp-content/uploads/2023/07/07222023_swift_213100.jpg?d=2040x1479"
alt="Taylor" />

We have access to information about 240 songs on 11 albums. A small
sample is shown below:

    Rows: 10
    Columns: 27
    $ album_name         <chr> "1989 (Taylor's Version)", "Speak Now (Taylor's Ver…
    $ track_number       <int> 6, 19, 18, 9, 10, 14, 11, 7, 15, 5
    $ track_name         <chr> "Shake It Off (Taylor's Version)", "I Can See You (…
    $ album_release      <date> 2023-10-27, 2023-07-07, 2023-10-27, 2006-10-24, 202…
    $ critic_album_score <int> 90, 81, 90, 67, 82, 76, 90, 82, 88, 85
    $ user_album_score   <dbl> NA, 9.2, NA, 8.4, 8.9, NA, NA, 8.9, 9.0, 8.9
    $ artist             <chr> "Taylor Swift", "Taylor Swift", "Taylor Swift", "T…
    $ featuring          <chr> NA, NA, NA, NA, NA, NA, NA, "Colbie Caillat", NA, NA
    $ single_release     <date> NA, NA, NA, 2008-05-18, NA, NA, NA, NA, NA, NA
    $ track_release      <date> 2023-10-27, 2023-07-07, 2023-10-27, 2006-10-24, 202…
    $ danceability       <dbl> 0.636, 0.694, 0.633, 0.476, 0.402, 0.420, 0.471, 0.…
    $ energy             <dbl> 0.808, 0.764, 0.551, 0.777, 0.732, 0.405, 0.509, 0.…
    $ key                <int> 7, 6, 4, 4, 5, 10, 1, 1, 5, 9
    $ loudness           <dbl> 9.796, 10.596, 7.192, 11.718, 10.824, 6.447, 6.693,…
    $ mode               <int> 1, 1, 1, 0, 1, 1, 0, 1, 1, 1
    $ speechiness        <dbl> 0.0729, 0.0337, 0.0341, 0.0289, 0.0484, 0.0579, 0.…
    $ acousticness       <dbl> 0.0121, 0.0586, 0.0660, 0.0103, 0.0033, 0.5280, 0.…
    $ instrumentalness   <dbl> 2.18e-05, 0.00e+00, 9.94e-06, 0.00e+00, 0.00e+00, 0…
    $ liveness           <dbl> 0.3590, 0.0608, 0.1270, 0.1960, 0.1080, 0.3370, 0.0…
    $ valence            <dbl> 0.9170, 0.8190, 0.1640, 0.4720, 0.4720, 0.2850, 0.0…
    $ tempo              <dbl> 160.058, 123.044, 109.950, 167.964, 161.032, 142.17…
    $ time_signature     <int> 4, 4, 4, 4, 4, 1, 4, 4, 4, 5
    $ duration_ms        <int> 219209, 273186, 279833, 242200, 243137, 245542, 250…
    $ explicit           <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FAL…
    $ key_name           <chr> "G", "F#", "E", "E", "F", "A#", "C#", "C#", "F", "A"
    $ mode_name          <chr> "major", "major", "major", "minor", "major", "major…
    $ key_mode           <chr> "G major", "F# major", "E major", "E minor", "F maj…

| album_name                    | track_number | track_name                                          | album_release | critic_album_score | user_album_score | artist       | featuring      | single_release | track_release | danceability | energy | key | loudness | mode | speechiness | acousticness | instrumentalness | liveness | valence |   tempo | time_signature | duration_ms | explicit | key_name | mode_name | key_mode |
|:------------------------------|-------------:|:----------------------------------------------------|:--------------|-------------------:|-----------------:|:-------------|:---------------|:---------------|:--------------|-------------:|-------:|----:|---------:|-----:|------------:|-------------:|-----------------:|---------:|--------:|--------:|---------------:|------------:|:---------|:---------|:----------|:---------|
| 1989 (Taylor’s Version)       |            6 | Shake It Off (Taylor’s Version)                     | 2023-10-27    |                 90 |               NA | Taylor Swift | NA             | NA             | 2023-10-27    |        0.636 |  0.808 |   7 |    9.796 |    1 |      0.0729 |       0.0121 |         2.18e-05 |   0.3590 |  0.9170 | 160.058 |              4 |      219209 | FALSE    | G        | major     | G major  |
| Speak Now (Taylor’s Version)  |           19 | I Can See You (Taylor’s Version) \[From The Vault\] | 2023-07-07    |                 81 |              9.2 | Taylor Swift | NA             | NA             | 2023-07-07    |        0.694 |  0.764 |   6 |   10.596 |    1 |      0.0337 |       0.0586 |         0.00e+00 |   0.0608 |  0.8190 | 123.044 |              4 |      273186 | FALSE    | F#       | major     | F# major |
| 1989 (Taylor’s Version)       |           18 | Say Don’t Go (Taylor’s Version) \[From The Vault\]  | 2023-10-27    |                 90 |               NA | Taylor Swift | NA             | NA             | 2023-10-27    |        0.633 |  0.551 |   4 |    7.192 |    1 |      0.0341 |       0.0660 |         9.90e-06 |   0.1270 |  0.1640 | 109.950 |              4 |      279833 | FALSE    | E        | major     | E major  |
| Taylor Swift                  |            9 | Should’ve Said No                                   | 2006-10-24    |                 67 |              8.4 | Taylor Swift | NA             | 2008-05-18     | 2006-10-24    |        0.476 |  0.777 |   4 |   11.718 |    0 |      0.0289 |       0.0103 |         0.00e+00 |   0.1960 |  0.4720 | 167.964 |              4 |      242200 | FALSE    | E        | minor     | E minor  |
| Fearless (Taylor’s Version)   |           10 | The Way I Loved You (Taylor’s Version)              | 2021-04-09    |                 82 |              8.9 | Taylor Swift | NA             | NA             | 2021-04-09    |        0.402 |  0.732 |   5 |   10.824 |    1 |      0.0484 |       0.0033 |         0.00e+00 |   0.1080 |  0.4720 | 161.032 |              4 |      243137 | FALSE    | F        | major     | F major  |
| THE TORTURED POETS DEPARTMENT |           14 | The Smallest Man Who Ever Lived                     | 2024-04-19    |                 76 |               NA | Taylor Swift | NA             | NA             | 2024-04-19    |        0.420 |  0.405 |  10 |    6.447 |    1 |      0.0579 |       0.5280 |         0.00e+00 |   0.3370 |  0.2850 | 142.172 |              1 |      245542 | TRUE     | A#       | major     | A# major |
| 1989 (Taylor’s Version)       |           11 | This Love (Taylor’s Version)                        | 2023-10-27    |                 90 |               NA | Taylor Swift | NA             | NA             | 2022-05-06    |        0.471 |  0.509 |   1 |    6.693 |    0 |      0.0355 |       0.3160 |         0.00e+00 |   0.0673 |  0.0567 | 144.071 |              4 |      250100 | FALSE    | C#       | minor     | C# minor |
| Fearless (Taylor’s Version)   |            7 | Breathe (Taylor’s Version)                          | 2021-04-09    |                 82 |              8.9 | Taylor Swift | Colbie Caillat | NA             | 2021-04-09    |        0.506 |  0.626 |   1 |    9.423 |    1 |      0.0287 |       0.1560 |         0.00e+00 |   0.2280 |  0.3210 | 148.035 |              4 |      263377 | FALSE    | C#       | major     | C# major |
| folklore                      |           15 | peace                                               | 2020-07-24    |                 88 |              9.0 | Taylor Swift | NA             | NA             | 2020-07-24    |        0.644 |  0.284 |   5 |    2.610 |    1 |      0.0821 |       0.9160 |         1.50e-05 |   0.0909 |  0.3280 | 150.072 |              4 |      234000 | TRUE     | F        | major     | F major  |
| evermore                      |            5 | tolerate it                                         | 2020-12-11    |                 85 |              8.9 | Taylor Swift | NA             | NA             | 2020-12-11    |        0.316 |  0.361 |   9 |    5.108 |    1 |      0.0488 |       0.8780 |         2.67e-05 |   0.0797 |  0.2210 |  74.952 |              5 |      245440 | TRUE     | A        | major     | A major  |

# What do we want to find out?

Here are some things we want to know about Taylor Swift:

- Are albums with more or less songs more popular with critics?
- Which album has the ‘loudest’ songs?
- How long is the longest album? Which album has the longest songs?
- Which album is the most ‘danceable’?
- Is there a relationship between ‘acousticness’ and ‘energy’?
- Is there a relationship between ‘loudness’ and ‘energy’?
- Are albums that are more ‘danceable’ more popular according to
  ‘users’?
- Are albums with more songs more popular according to ‘users’?
- Anything else you want to find out!

Work with your group to make a chart or a table answering your question.

# What do all of the columns mean?

Here’s some more information about the data we have been given:

- `album_name` - the name of the album
- `track_number` - the number of the song
- `track_name` - the name of the song
- `album_release` - date the album was released
- `critic_album_score` - score for the album by critics (out of 100)
- `user_album_score` - score for the album by listeners (out of 10)
- `artist` - artist (this is always Taylor Swift!)
- `featuring` - any other artists that featured
- `single_release` - if the song was released as a single, the date it
  was released
- `track_release` - usually the same as the album date
- `danceability` - how suitable the song is for dancing (out of 1)
- `energy` - how ‘intense’ and ‘active’ the songs are (out of 1)
- `key` - musical key of the song
- `loudness` - overall loudness of the song (higher is louder)
- `mode` - is the song in a major or minor key? (0 is minor, 1 is major)
- `speechiness` - is the song spoken word (close to 1) or does it have
  music (close to 0)
- `acousticness` - is the track acoustic (1 is acoustic, 0 is not)
- `instrumentalness` - does the track contain vocals? (0 for vocals, 1
  for instrumental only)
- `liveness` - is there an audience in the recording? (out of 1)
- `valence` - is the track happy (1) or sad (0)?
- `tempo` - how fast is the song in beats per minute?
- `time_signature` - what is the time signature of the song (eg, 3 means
  ‘3/4’ time)
- `duration_ms` - how long is the song in milliseconds (1000ms is 1
  second)
- `explicit` - is the song ‘explicit’?
- `key_name` - what is the name (letter) of the key?
- `mode_name` - what is the name of the mode (minor or major)
- `key_mode` - this is the key and the mode together (eg, C minor)
