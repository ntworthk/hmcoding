# Meet the songs

We have been given a dataset about the songs and albums released by
Taylor Swift.

<img src="https://media.giphy.com/media/2tg4k9pXNcGi7kZ9Pz/giphy.gif"
alt="GIF of Taylor saying “yes”" />

We have access to information about 240 songs on 11 albums. A small
sample is shown below:

| album_name                    | track_number | track_name                                                               | album_release | critic_album_score | user_album_score | artist       | featuring  | single_release | track_release | danceability | energy | key | loudness | mode | speechiness | acousticness | instrumentalness | liveness | valence |   tempo | time_signature | duration_ms | explicit | key_name | mode_name | key_mode |
|:------------------------------|-------------:|:-------------------------------------------------------------------------|:--------------|-------------------:|-----------------:|:-------------|:-----------|:---------------|:--------------|-------------:|-------:|----:|---------:|-----:|------------:|-------------:|-----------------:|---------:|--------:|--------:|---------------:|------------:|:---------|:---------|:----------|:---------|
| Red (Taylor’s Version)        |           30 | All Too Well (10 Minute Version) \[Taylor’s Version\] \[From The Vault\] | 2021-11-12    |                 91 |              8.9 | Taylor Swift | NA         | NA             | 2021-11-12    |        0.631 |  0.518 |   0 |    6.718 |    1 |      0.0303 |      0.27400 |         0.00e+00 |   0.0880 |  0.2050 |  93.023 |              4 |      613027 | TRUE     | C        | major     | C major  |
| Fearless (Taylor’s Version)   |            3 | Love Story (Taylor’s Version)                                            | 2021-04-09    |                 82 |              8.9 | Taylor Swift | NA         | 2021-02-12     | 2021-02-12    |        0.627 |  0.792 |   2 |   11.178 |    1 |      0.0310 |      0.13000 |         4.00e-06 |   0.0845 |  0.4150 | 119.054 |              4 |      235767 | FALSE    | D        | major     | D major  |
| Fearless (Taylor’s Version)   |           14 | Jump Then Fall (Taylor’s Version)                                        | 2021-04-09    |                 82 |              8.9 | Taylor Swift | NA         | NA             | 2021-04-09    |        0.572 |  0.690 |   2 |    9.288 |    1 |      0.0358 |      0.04740 |         0.00e+00 |   0.0897 |  0.6240 | 160.111 |              4 |      237580 | FALSE    | D        | major     | D major  |
| Fearless (Taylor’s Version)   |           19 | The Other Side Of The Door (Taylor’s Version)                            | 2021-04-09    |                 82 |              8.9 | Taylor Swift | NA         | NA             | 2021-04-09    |        0.432 |  0.873 |   4 |   11.122 |    1 |      0.0577 |      0.02790 |         0.00e+00 |   0.1670 |  0.6290 | 163.936 |              4 |      238444 | FALSE    | E        | major     | E major  |
| Speak Now (Taylor’s Version)  |           15 | Ours (Taylor’s Version)                                                  | 2023-07-07    |                 81 |              9.2 | Taylor Swift | NA         | NA             | 2023-07-07    |        0.535 |  0.488 |   0 |    7.228 |    1 |      0.0278 |      0.44900 |         0.00e+00 |   0.1110 |  0.3480 | 159.813 |              4 |      235803 | FALSE    | C        | major     | C major  |
| THE TORTURED POETS DEPARTMENT |           12 | loml                                                                     | 2024-04-19    |                 76 |               NA | Taylor Swift | NA         | NA             | 2024-04-19    |        0.369 |  0.267 |   0 |    2.928 |    1 |      0.0539 |      0.86900 |         0.00e+00 |   0.1030 |  0.1720 |  87.038 |              1 |      277157 | TRUE     | C        | major     | C major  |
| Fearless (Taylor’s Version)   |            4 | Hey Stephen (Taylor’s Version)                                           | 2021-04-09    |                 82 |              8.9 | Taylor Swift | NA         | NA             | 2021-04-09    |        0.788 |  0.571 |   6 |    9.354 |    1 |      0.0296 |      0.10600 |         0.00e+00 |   0.0934 |  0.7970 | 115.990 |              4 |      254255 | FALSE    | F#       | major     | F# major |
| reputation                    |            9 | Getaway Car                                                              | 2017-11-10    |                 71 |              8.3 | Taylor Swift | NA         | 2018-09-27     | 2017-11-10    |        0.562 |  0.689 |   2 |    8.744 |    1 |      0.1270 |      0.00465 |         2.20e-06 |   0.0888 |  0.3510 | 172.054 |              4 |      233627 | FALSE    | D        | major     | D major  |
| Lover                         |           12 | Soon You’ll Get Better                                                   | 2019-08-23    |                 79 |              8.4 | Taylor Swift | The Chicks | NA             | 2019-08-23    |        0.433 |  0.182 |   0 |    2.923 |    1 |      0.0641 |      0.90700 |         0.00e+00 |   0.1230 |  0.4210 | 207.476 |              4 |      201587 | FALSE    | C        | major     | C major  |
| 1989 (Taylor’s Version)       |           19 | Now That We Don’t Talk (Taylor’s Version) \[From The Vault\]             | 2023-10-27    |                 90 |               NA | Taylor Swift | NA         | NA             | 2023-10-27    |        0.800 |  0.501 |   0 |    6.157 |    1 |      0.0340 |      0.16000 |         7.14e-05 |   0.0874 |  0.0831 | 110.013 |              4 |      146437 | FALSE    | C        | major     | C major  |

    Rows: 10
    Columns: 27
    $ album_name         <chr> "Red (Taylor's Version)", "Fearless (Taylor's Versi…
    $ track_number       <int> 30, 3, 14, 19, 15, 12, 4, 9, 12, 19
    $ track_name         <chr> "All Too Well (10 Minute Version) [Taylor's Version…
    $ album_release      <date> 2021-11-12, 2021-04-09, 2021-04-09, 2021-04-09, 202…
    $ critic_album_score <int> 91, 82, 82, 82, 81, 76, 82, 71, 79, 90
    $ user_album_score   <dbl> 8.9, 8.9, 8.9, 8.9, 9.2, NA, 8.9, 8.3, 8.4, NA
    $ artist             <chr> "Taylor Swift", "Taylor Swift", "Taylor Swift", "T…
    $ featuring          <chr> NA, NA, NA, NA, NA, NA, NA, NA, "The Chicks", NA
    $ single_release     <date> NA, 2021-02-12, NA, NA, NA, NA, NA, 2018-09-27, NA,…
    $ track_release      <date> 2021-11-12, 2021-02-12, 2021-04-09, 2021-04-09, 202…
    $ danceability       <dbl> 0.631, 0.627, 0.572, 0.432, 0.535, 0.369, 0.788, 0.…
    $ energy             <dbl> 0.518, 0.792, 0.690, 0.873, 0.488, 0.267, 0.571, 0.…
    $ key                <int> 0, 2, 2, 4, 0, 0, 6, 2, 0, 0
    $ loudness           <dbl> 6.718, 11.178, 9.288, 11.122, 7.228, 2.928, 9.354,…
    $ mode               <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    $ speechiness        <dbl> 0.0303, 0.0310, 0.0358, 0.0577, 0.0278, 0.0539, 0.…
    $ acousticness       <dbl> 0.27400, 0.13000, 0.04740, 0.02790, 0.44900, 0.8690…
    $ instrumentalness   <dbl> 0.00e+00, 3.97e-06, 0.00e+00, 0.00e+00, 0.00e+00, 0…
    $ liveness           <dbl> 0.0880, 0.0845, 0.0897, 0.1670, 0.1110, 0.1030, 0.0…
    $ valence            <dbl> 0.2050, 0.4150, 0.6240, 0.6290, 0.3480, 0.1720, 0.7…
    $ tempo              <dbl> 93.023, 119.054, 160.111, 163.936, 159.813, 87.038,…
    $ time_signature     <int> 4, 4, 4, 4, 4, 1, 4, 4, 4, 4
    $ duration_ms        <int> 613027, 235767, 237580, 238444, 235803, 277157, 254…
    $ explicit           <lgl> TRUE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALS…
    $ key_name           <chr> "C", "D", "D", "E", "C", "C", "F#", "D", "C", "C"
    $ mode_name          <chr> "major", "major", "major", "major", "major", "major…
    $ key_mode           <chr> "C major", "D major", "D major", "E major", "C majo…

| album_name                    | track_number | track_name                                                               | album_release | critic_album_score | user_album_score | artist       | featuring  | single_release | track_release | danceability | energy | key | loudness | mode | speechiness | acousticness | instrumentalness | liveness | valence |   tempo | time_signature | duration_ms | explicit | key_name | mode_name | key_mode |
|:------------------------------|-------------:|:-------------------------------------------------------------------------|:--------------|-------------------:|-----------------:|:-------------|:-----------|:---------------|:--------------|-------------:|-------:|----:|---------:|-----:|------------:|-------------:|-----------------:|---------:|--------:|--------:|---------------:|------------:|:---------|:---------|:----------|:---------|
| Red (Taylor’s Version)        |           30 | All Too Well (10 Minute Version) \[Taylor’s Version\] \[From The Vault\] | 2021-11-12    |                 91 |              8.9 | Taylor Swift | NA         | NA             | 2021-11-12    |        0.631 |  0.518 |   0 |    6.718 |    1 |      0.0303 |      0.27400 |         0.00e+00 |   0.0880 |  0.2050 |  93.023 |              4 |      613027 | TRUE     | C        | major     | C major  |
| Fearless (Taylor’s Version)   |            3 | Love Story (Taylor’s Version)                                            | 2021-04-09    |                 82 |              8.9 | Taylor Swift | NA         | 2021-02-12     | 2021-02-12    |        0.627 |  0.792 |   2 |   11.178 |    1 |      0.0310 |      0.13000 |         4.00e-06 |   0.0845 |  0.4150 | 119.054 |              4 |      235767 | FALSE    | D        | major     | D major  |
| Fearless (Taylor’s Version)   |           14 | Jump Then Fall (Taylor’s Version)                                        | 2021-04-09    |                 82 |              8.9 | Taylor Swift | NA         | NA             | 2021-04-09    |        0.572 |  0.690 |   2 |    9.288 |    1 |      0.0358 |      0.04740 |         0.00e+00 |   0.0897 |  0.6240 | 160.111 |              4 |      237580 | FALSE    | D        | major     | D major  |
| Fearless (Taylor’s Version)   |           19 | The Other Side Of The Door (Taylor’s Version)                            | 2021-04-09    |                 82 |              8.9 | Taylor Swift | NA         | NA             | 2021-04-09    |        0.432 |  0.873 |   4 |   11.122 |    1 |      0.0577 |      0.02790 |         0.00e+00 |   0.1670 |  0.6290 | 163.936 |              4 |      238444 | FALSE    | E        | major     | E major  |
| Speak Now (Taylor’s Version)  |           15 | Ours (Taylor’s Version)                                                  | 2023-07-07    |                 81 |              9.2 | Taylor Swift | NA         | NA             | 2023-07-07    |        0.535 |  0.488 |   0 |    7.228 |    1 |      0.0278 |      0.44900 |         0.00e+00 |   0.1110 |  0.3480 | 159.813 |              4 |      235803 | FALSE    | C        | major     | C major  |
| THE TORTURED POETS DEPARTMENT |           12 | loml                                                                     | 2024-04-19    |                 76 |               NA | Taylor Swift | NA         | NA             | 2024-04-19    |        0.369 |  0.267 |   0 |    2.928 |    1 |      0.0539 |      0.86900 |         0.00e+00 |   0.1030 |  0.1720 |  87.038 |              1 |      277157 | TRUE     | C        | major     | C major  |
| Fearless (Taylor’s Version)   |            4 | Hey Stephen (Taylor’s Version)                                           | 2021-04-09    |                 82 |              8.9 | Taylor Swift | NA         | NA             | 2021-04-09    |        0.788 |  0.571 |   6 |    9.354 |    1 |      0.0296 |      0.10600 |         0.00e+00 |   0.0934 |  0.7970 | 115.990 |              4 |      254255 | FALSE    | F#       | major     | F# major |
| reputation                    |            9 | Getaway Car                                                              | 2017-11-10    |                 71 |              8.3 | Taylor Swift | NA         | 2018-09-27     | 2017-11-10    |        0.562 |  0.689 |   2 |    8.744 |    1 |      0.1270 |      0.00465 |         2.20e-06 |   0.0888 |  0.3510 | 172.054 |              4 |      233627 | FALSE    | D        | major     | D major  |
| Lover                         |           12 | Soon You’ll Get Better                                                   | 2019-08-23    |                 79 |              8.4 | Taylor Swift | The Chicks | NA             | 2019-08-23    |        0.433 |  0.182 |   0 |    2.923 |    1 |      0.0641 |      0.90700 |         0.00e+00 |   0.1230 |  0.4210 | 207.476 |              4 |      201587 | FALSE    | C        | major     | C major  |
| 1989 (Taylor’s Version)       |           19 | Now That We Don’t Talk (Taylor’s Version) \[From The Vault\]             | 2023-10-27    |                 90 |               NA | Taylor Swift | NA         | NA             | 2023-10-27    |        0.800 |  0.501 |   0 |    6.157 |    1 |      0.0340 |      0.16000 |         7.14e-05 |   0.0874 |  0.0831 | 110.013 |              4 |      146437 | FALSE    | C        | major     | C major  |

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
