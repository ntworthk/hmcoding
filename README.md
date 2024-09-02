# Meet the songs

We have been given a dataset about the songs and albums released by
Taylor Swift.

<img src="https://media.giphy.com/media/2tg4k9pXNcGi7kZ9Pz/giphy.gif"
alt="GIF of Taylor saying “yes”" />

We have access to information about 240 songs on 11 albums. A small
sample is shown below:

    Rows: 10
    Columns: 27
    $ album_name         <chr> "Speak Now (Taylor's Version)", "THE TORTURED POETS…
    $ track_number       <int> 15, 5, 16, 2, 2, 20, 8, 9, 13, 14
    $ track_name         <chr> "Ours (Taylor's Version)", "So Long, London", "ME!"…
    $ album_release      <date> 2023-07-07, 2024-04-19, 2019-08-23, 2019-08-23, 202…
    $ critic_album_score <int> 81, 76, 79, 79, 85, 91, 71, 71, 90, 85
    $ user_album_score   <dbl> 9.2, NA, 8.4, 8.4, 8.9, 8.9, 8.3, 8.3, NA, 8.9
    $ artist             <chr> "Taylor Swift", "Taylor Swift", "Taylor Swift", "T…
    $ featuring          <chr> NA, NA, "Brendon Urie, Panic! At The Disco", NA, NA…
    $ single_release     <date> NA, NA, 2019-04-26, 2023-06-20, NA, NA, NA, 2018-09…
    $ track_release      <date> 2023-07-07, 2024-04-19, 2019-04-26, 2019-08-23, 202…
    $ danceability       <dbl> 0.535, 0.475, 0.610, 0.552, 0.462, 0.445, 0.800, 0.…
    $ energy             <dbl> 0.488, 0.528, 0.830, 0.702, 0.240, 0.131, 0.535, 0…
    $ key                <int> 0, 9, 0, 9, 0, 7, 7, 2, 4, 9
    $ loudness           <dbl> 7.228, 4.037, 11.384, 9.782, 3.412, 1.711, 8.805, …
    $ mode               <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    $ speechiness        <dbl> 0.0278, 0.2690, 0.0571, 0.1570, 0.0377, 0.0564, 0.1…
    $ acousticness       <dbl> 0.44900, 0.76100, 0.03300, 0.11700, 0.92000, 0.6630…
    $ instrumentalness   <dbl> 0.00e+00, 3.50e-03, 0.00e+00, 2.06e-05, 0.00e+00, 1…
    $ liveness           <dbl> 0.1110, 0.0804, 0.1180, 0.1050, 0.1130, 0.1080, 0.2…
    $ valence            <dbl> 0.348, 0.270, 0.728, 0.564, 0.320, 0.101, 0.451, 0.…
    $ tempo              <dbl> 159.813, 159.901, 182.162, 169.994, 171.319, 208.91…
    $ time_signature     <int> 4, 4, 4, 4, 4, 3, 4, 4, 4, 5
    $ duration_ms        <int> 235803, 262975, 193000, 178427, 244000, 321640, 209…
    $ explicit           <lgl> FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FAL…
    $ key_name           <chr> "C", "A", "C", "A", "C", "G", "G", "D", "E", "A"
    $ mode_name          <chr> "major", "major", "major", "major", "major", "major…
    $ key_mode           <chr> "C major", "A major", "C major", "A major", "C majo…

| album_name                    | track_number | track_name                                             | album_release | critic_album_score | user_album_score | artist       | featuring                         | single_release | track_release | danceability | energy | key | loudness | mode | speechiness | acousticness | instrumentalness | liveness | valence |   tempo | time_signature | duration_ms | explicit | key_name | mode_name | key_mode |
|:------------------------------|-------------:|:-------------------------------------------------------|:--------------|-------------------:|-----------------:|:-------------|:----------------------------------|:---------------|:--------------|-------------:|-------:|----:|---------:|-----:|------------:|-------------:|-----------------:|---------:|--------:|--------:|---------------:|------------:|:---------|:---------|:----------|:---------|
| Speak Now (Taylor’s Version)  |           15 | Ours (Taylor’s Version)                                | 2023-07-07    |                 81 |              9.2 | Taylor Swift | NA                                | NA             | 2023-07-07    |        0.535 |  0.488 |   0 |    7.228 |    1 |      0.0278 |      0.44900 |         0.00e+00 |   0.1110 |   0.348 | 159.813 |              4 |      235803 | FALSE    | C        | major     | C major  |
| THE TORTURED POETS DEPARTMENT |            5 | So Long, London                                        | 2024-04-19    |                 76 |               NA | Taylor Swift | NA                                | NA             | 2024-04-19    |        0.475 |  0.528 |   9 |    4.037 |    1 |      0.2690 |      0.76100 |         3.50e-03 |   0.0804 |   0.270 | 159.901 |              4 |      262975 | FALSE    | A        | major     | A major  |
| Lover                         |           16 | ME!                                                    | 2019-08-23    |                 79 |              8.4 | Taylor Swift | Brendon Urie, Panic! At The Disco | 2019-04-26     | 2019-04-26    |        0.610 |  0.830 |   0 |   11.384 |    1 |      0.0571 |      0.03300 |         0.00e+00 |   0.1180 |   0.728 | 182.162 |              4 |      193000 | FALSE    | C        | major     | C major  |
| Lover                         |            2 | Cruel Summer                                           | 2019-08-23    |                 79 |              8.4 | Taylor Swift | NA                                | 2023-06-20     | 2019-08-23    |        0.552 |  0.702 |   9 |    9.782 |    1 |      0.1570 |      0.11700 |         2.06e-05 |   0.1050 |   0.564 | 169.994 |              4 |      178427 | FALSE    | A        | major     | A major  |
| evermore                      |            2 | champagne problems                                     | 2020-12-11    |                 85 |              8.9 | Taylor Swift | NA                                | NA             | 2020-12-11    |        0.462 |  0.240 |   0 |    3.412 |    1 |      0.0377 |      0.92000 |         0.00e+00 |   0.1130 |   0.320 | 171.319 |              4 |      244000 | TRUE     | C        | major     | C major  |
| Red (Taylor’s Version)        |           20 | State Of Grace (Acoustic Version) \[Taylor’s Version\] | 2021-11-12    |                 91 |              8.9 | Taylor Swift | NA                                | NA             | 2021-11-12    |        0.445 |  0.131 |   7 |    1.711 |    1 |      0.0564 |      0.66300 |         1.60e-06 |   0.1080 |   0.101 | 208.918 |              3 |      321640 | FALSE    | G        | major     | G major  |
| reputation                    |            8 | Gorgeous                                               | 2017-11-10    |                 71 |              8.3 | Taylor Swift | NA                                | NA             | 2017-10-20    |        0.800 |  0.535 |   7 |    8.805 |    1 |      0.1350 |      0.07130 |         9.50e-06 |   0.2130 |   0.451 |  92.027 |              4 |      209680 | FALSE    | G        | major     | G major  |
| reputation                    |            9 | Getaway Car                                            | 2017-11-10    |                 71 |              8.3 | Taylor Swift | NA                                | 2018-09-27     | 2017-11-10    |        0.562 |  0.689 |   2 |    8.744 |    1 |      0.1270 |      0.00465 |         2.20e-06 |   0.0888 |   0.351 | 172.054 |              4 |      233627 | FALSE    | D        | major     | D major  |
| 1989 (Taylor’s Version)       |           13 | Clean (Taylor’s Version)                               | 2023-10-27    |                 90 |               NA | Taylor Swift | NA                                | NA             | 2023-10-27    |        0.772 |  0.391 |   4 |    6.597 |    1 |      0.0293 |      0.25000 |         2.92e-05 |   0.0981 |   0.258 | 103.955 |              4 |      271000 | FALSE    | E        | major     | E major  |
| evermore                      |           14 | closure                                                | 2020-12-11    |                 85 |              8.9 | Taylor Swift | NA                                | NA             | 2020-12-11    |        0.689 |  0.704 |   9 |    4.676 |    1 |      0.2450 |      0.83500 |         4.80e-06 |   0.1340 |   0.920 | 151.884 |              5 |      180653 | FALSE    | A        | major     | A major  |

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
- `loudness` - overall loudness of the song
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
