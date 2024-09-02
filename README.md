# Meet the songs

We have been given a dataset about the songs and albums released by
Taylor Swift.

<img src="https://media.giphy.com/media/2tg4k9pXNcGi7kZ9Pz/giphy.gif"
alt="GIF of Taylor saying “yes”" />

We have access to information about 240 songs on 11 albums. A small
sample is shown below:

| album_name                   | track_number | track_name                                                               | album_release | critic_album_score | user_album_score | artist       | featuring    | single_release | track_release | danceability | energy | key | loudness | mode | speechiness | acousticness | instrumentalness | liveness | valence |   tempo | time_signature | duration_ms | explicit | key_name | mode_name | key_mode |
|:-----------------------------|-------------:|:-------------------------------------------------------------------------|:--------------|-------------------:|-----------------:|:-------------|:-------------|:---------------|:--------------|-------------:|-------:|----:|---------:|-----:|------------:|-------------:|-----------------:|---------:|--------:|--------:|---------------:|------------:|:---------|:---------|:----------|:---------|
| Red (Taylor’s Version)       |           17 | The Moment I Knew (Taylor’s Version)                                     | 2021-11-12    |                 91 |              8.9 | Taylor Swift | NA           | NA             | 2021-11-12    |        0.636 |  0.402 |   7 |    7.634 |    1 |      0.0310 |      0.04940 |         0.00e+00 |   0.1070 |   0.208 | 125.952 |              4 |      285280 | FALSE    | G        | major     | G major  |
| Red (Taylor’s Version)       |           30 | All Too Well (10 Minute Version) \[Taylor’s Version\] \[From The Vault\] | 2021-11-12    |                 91 |              8.9 | Taylor Swift | NA           | NA             | 2021-11-12    |        0.631 |  0.518 |   0 |    6.718 |    1 |      0.0303 |      0.27400 |         0.00e+00 |   0.0880 |   0.205 |  93.023 |              4 |      613027 | TRUE     | C        | major     | C major  |
| Speak Now (Taylor’s Version) |           17 | Electric Touch (Taylor’s Version) \[From The Vault\]                     | 2023-07-07    |                 81 |              9.2 | Taylor Swift | Fall Out Boy | NA             | 2023-07-07    |        0.547 |  0.855 |   7 |   10.789 |    1 |      0.0597 |      0.01640 |         0.00e+00 |   0.1440 |   0.282 | 131.073 |              4 |      266467 | FALSE    | G        | major     | G major  |
| Taylor Swift                 |           10 | Mary’s Song (Oh My My My)                                                | 2006-10-24    |                 67 |              8.4 | Taylor Swift | NA           | NA             | 2006-10-24    |        0.403 |  0.627 |   2 |   10.209 |    1 |      0.0292 |      0.01770 |         0.00e+00 |   0.1820 |   0.374 |  74.900 |              4 |      213080 | FALSE    | D        | major     | D major  |
| Red (Taylor’s Version)       |           19 | Girl At Home (Taylor’s Version)                                          | 2021-11-12    |                 91 |              8.9 | Taylor Swift | NA           | NA             | 2021-11-12    |        0.691 |  0.736 |   5 |    8.515 |    1 |      0.0326 |      0.00955 |         1.88e-05 |   0.1010 |   0.612 | 125.089 |              4 |      220520 | FALSE    | F        | major     | F major  |
| 1989 (Taylor’s Version)      |            7 | I Wish You Would (Taylor’s Version)                                      | 2023-10-27    |                 90 |               NA | Taylor Swift | NA           | NA             | 2023-10-27    |        0.670 |  0.858 |   0 |    8.961 |    1 |      0.0439 |      0.00354 |         1.25e-05 |   0.0687 |   0.539 | 118.009 |              4 |      207650 | FALSE    | C        | major     | C major  |
| Speak Now (Taylor’s Version) |            7 | The Story Of Us (Taylor’s Version)                                       | 2023-07-07    |                 81 |              9.2 | Taylor Swift | NA           | NA             | 2023-07-07    |        0.515 |  0.781 |   4 |   12.881 |    1 |      0.0535 |      0.00192 |         0.00e+00 |   0.0540 |   0.570 | 139.846 |              4 |      267653 | FALSE    | E        | major     | E major  |
| folklore                     |           12 | mad woman                                                                | 2020-07-24    |                 88 |              9.0 | Taylor Swift | NA           | NA             | 2020-07-24    |        0.593 |  0.700 |   3 |    6.473 |    1 |      0.0492 |      0.67000 |         6.80e-06 |   0.1160 |   0.451 | 141.898 |              4 |      237267 | TRUE     | D#       | major     | D# major |
| Midnights                    |            8 | Vigilante Shit                                                           | 2022-10-21    |                 85 |              8.3 | Taylor Swift | NA           | NA             | 2022-10-21    |        0.867 |  0.272 |   4 |    4.475 |    0 |      0.3630 |      0.15700 |         3.42e-05 |   0.1180 |   0.157 |  79.962 |              4 |      164801 | TRUE     | E        | minor     | E minor  |
| evermore                     |            7 | happiness                                                                | 2020-12-11    |                 85 |              8.9 | Taylor Swift | NA           | NA             | 2020-12-11    |        0.559 |  0.334 |  11 |    4.756 |    1 |      0.0376 |      0.87000 |         0.00e+00 |   0.1140 |   0.211 | 122.079 |              4 |      315147 | TRUE     | B        | major     | B major  |

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
