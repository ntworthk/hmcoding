library(tidyverse)
library(taylor)

taylor_albums <- taylor_albums |> 
  rename(critic_album_score = metacritic_score, user_album_score = user_score)

taylor_album_songs <- taylor_album_songs |> 
  left_join(taylor_albums, by = join_by(album_name, ep, album_release)) |> 
  filter(!bonus_track) |> 
  select(-lyrics, -ep, -bonus_track, -promotional_release) |> 
  select(album_name, track_number, track_name, album_release, critic_album_score, user_album_score, everything()) |> 
  mutate(loudness = loudness - min(loudness))

# - Which albums have the most songs? ------------------------------------------

# Chart
taylor_album_songs |> 
  group_by(album_name) |> 
  summarise(
    number_of_songs = n()
  ) |> 
  ggplot(aes(x = album_name, y = number_of_songs)) +
  geom_col()

# Chart (Nick's version)
taylor_album_songs |> 
  group_by(album_name) |> 
  summarise(
    number_of_songs = n()
  ) |> 
  arrange(number_of_songs) |> 
  mutate(album_name = fct_inorder(album_name)) |> 
  ggplot(aes(y = album_name, x = number_of_songs)) +
  geom_col(fill = "yellowgreen") +
  geom_text(aes(label = number_of_songs), hjust = 1, colour = "skyblue4") +
  geom_vline(xintercept = 0) +
  scale_x_continuous(expand = expansion(mult = c(0, 0.05))) +
  labs(x = "Number of songs", y = "Album name") +
  theme_classic(base_family = "Arial", base_size = 12) +
  theme(
    plot.background = element_rect(fill = "hotpink2"),
    panel.background = element_rect(fill = "hotpink2"),
    text = element_text(colour = "skyblue4"),
    axis.text = element_text(colour = "skyblue4")
  )



# - Are albums with more or less songs more popular with critics? --------------

# Chart
taylor_album_songs |> 
  group_by(album_name) |> 
  summarise(
    number_of_songs = n(),
    critic_album_score = mean(critic_album_score),
    user_album_score = mean(user_album_score)
  ) |> 
  ggplot(aes(x = number_of_songs, y = critic_album_score)) +
  geom_point()

# Chart (Nick's version)
taylor_album_songs |> 
  group_by(album_name) |> 
  summarise(
    number_of_songs = n(),
    critic_album_score = mean(critic_album_score),
    user_album_score = mean(user_album_score)
  ) |> 
  ggplot(aes(x = number_of_songs, y = critic_album_score)) +
  geom_point(colour = "skyblue4", size = 4) +
  geom_smooth(method = "lm", se = FALSE, colour = "yellowgreen") +
  labs(x = "Number of songs", y = "Critic score") +
  theme_classic(base_family = "Arial", base_size = 20) +
  theme(
    plot.background = element_rect(fill = "hotpink2"),
    panel.background = element_rect(fill = "hotpink2"),
    text = element_text(colour = "skyblue4"),
    axis.text = element_text(colour = "skyblue4")
  )

# - Which album has the 'loudest' songs ----------------------------------------

# Chart 1
taylor_album_songs |> 
  group_by(album_name) |> 
  summarise(average_loudness = mean(loudness)) |> 
  ggplot(aes(x = album_name, y = average_loudness)) +
  geom_col()

# Chart 1 (Nick's version)
taylor_album_songs |> 
  group_by(album_name) |> 
  summarise(average_loudness = mean(loudness)) |> 
  arrange(average_loudness) |> 
  mutate(album_name = fct_inorder(album_name)) |> 
  ggplot(aes(y = album_name, x = average_loudness)) +
  geom_col(fill = "yellowgreen") +
  geom_text(aes(label = round(average_loudness, digits = 1)), hjust = 1, colour = "skyblue4") +
  geom_vline(xintercept = 0) +
  scale_x_continuous(expand = expansion(mult = c(0, 0.05))) +
  labs(x = "Average loudness", y = "Album name") +
  theme_classic(base_family = "Arial", base_size = 20) +
  theme(
    plot.background = element_rect(fill = "hotpink2"),
    panel.background = element_rect(fill = "hotpink2"),
    text = element_text(colour = "skyblue4"),
    axis.text = element_text(colour = "skyblue4")
  )

# Chart 2
taylor_album_songs |> 
  group_by(album_name) |> 
  summarise(max_loudness = max(loudness)) |> 
  ggplot(aes(x = album_name, y = max_loudness)) +
  geom_col()

# Chart 2 (Nick's version)
taylor_album_songs |> 
  group_by(album_name) |> 
  summarise(max_loudness = max(loudness)) |> 
  arrange(max_loudness) |> 
  mutate(album_name = fct_inorder(album_name)) |> 
  ggplot(aes(y = album_name, x = max_loudness)) +
  geom_col(fill = "yellowgreen") +
  geom_text(aes(label = round(max_loudness, digits = 1)), hjust = 1, colour = "skyblue4") +
  geom_vline(xintercept = 0) +
  scale_x_continuous(expand = expansion(mult = c(0, 0.05))) +
  labs(x = "Maximum loudness", y = "Album name") +
  theme_classic(base_family = "Arial", base_size = 20) +
  theme(
    plot.background = element_rect(fill = "hotpink2"),
    panel.background = element_rect(fill = "hotpink2"),
    text = element_text(colour = "skyblue4"),
    axis.text = element_text(colour = "skyblue4")
  )


# - How long is the longest album? Which album has the longest songs? ----------

# Chart 1
taylor_album_songs |>
  group_by(album_name) |> 
  summarise(
    album_length = sum(duration_ms) / 1000 / 60,
    average_song_length = mean(duration_ms) / 1000 / 60,
    longest_song_length = max(duration_ms) / 1000 / 60
  ) |> 
  ggplot(aes(x = album_length, y = album_name)) +
  geom_col()

# Chart 1 (Nick's version)
taylor_album_songs |>
  group_by(album_name) |> 
  summarise(
    album_length = sum(duration_ms) / 1000 / 60,
    average_song_length = mean(duration_ms) / 1000 / 60,
    longest_song_length = max(duration_ms) / 1000 / 60
  ) |> 
  arrange(album_length) |> 
  mutate(album_name = fct_inorder(album_name)) |> 
  ggplot(aes(x = album_length, y = album_name)) +
  geom_col(fill = "yellowgreen") +
  geom_text(aes(label = round(album_length, digits = 1)), hjust = 1, colour = "skyblue4", family = "Stencil") +
  geom_vline(xintercept = 0) +
  scale_x_continuous(expand = expansion(mult = c(0, 0.05))) +
  labs(x = "Album length (minutes)", y = "Album name") +
  theme_classic(base_family = "Stencil", base_size = 20) +
  theme(
    plot.background = element_rect(fill = "hotpink2"),
    panel.background = element_rect(fill = "hotpink2"),
    text = element_text(colour = "skyblue4"),
    axis.text = element_text(colour = "skyblue4")
  )

# Chart 2
taylor_album_songs |>
  group_by(album_name) |> 
  summarise(
    album_length = sum(duration_ms) / 1000 / 60,
    average_song_length = mean(duration_ms) / 1000 / 60,
    longest_song_length = max(duration_ms) / 1000 / 60
  ) |> 
  ggplot(aes(x = average_song_length, y = album_name)) +
  geom_col()

# Chart 2 (Nick's version)
taylor_album_songs |>
  group_by(album_name) |> 
  summarise(
    album_length = sum(duration_ms) / 1000 / 60,
    average_song_length = mean(duration_ms) / 1000 / 60,
    longest_song_length = max(duration_ms) / 1000 / 60
  ) |> 
  arrange(average_song_length) |> 
  mutate(album_name = fct_inorder(album_name)) |> 
  ggplot(aes(x = average_song_length, y = album_name)) +
  geom_col(fill = "yellowgreen") +
  geom_text(aes(label = round(average_song_length, digits = 1)), hjust = 1, colour = "skyblue4", family = "Papyrus") +
  geom_vline(xintercept = 0) +
  scale_x_continuous(expand = expansion(mult = c(0, 0.05))) +
  labs(x = "Average song length (minutes)", y = "Album name") +
  theme_classic(base_family = "Papyrus", base_size = 16) +
  theme(
    plot.background = element_rect(fill = "hotpink2"),
    panel.background = element_rect(fill = "hotpink2"),
    text = element_text(colour = "skyblue4"),
    axis.text = element_text(colour = "skyblue4")
  )

# Chart 3
taylor_album_songs |>
  group_by(album_name) |> 
  summarise(
    album_length = sum(duration_ms) / 1000 / 60,
    average_song_length = mean(duration_ms) / 1000 / 60,
    longest_song_length = max(duration_ms) / 1000 / 60
  ) |> 
  ggplot(aes(x = longest_song_length, y = album_name)) +
  geom_col()

# Chart 3 (Nick's version)
taylor_album_songs |>
  group_by(album_name) |> 
  summarise(
    album_length = sum(duration_ms) / 1000 / 60,
    average_song_length = mean(duration_ms) / 1000 / 60,
    longest_song_length = max(duration_ms) / 1000 / 60
  ) |> 
  arrange(longest_song_length) |> 
  mutate(album_name = fct_inorder(album_name)) |> 
  ggplot(aes(x = longest_song_length, y = album_name)) +
  geom_col(fill = "yellowgreen") +
  geom_text(aes(label = round(longest_song_length, digits = 1)), hjust = 1, colour = "skyblue4", family = "Impact") +
  geom_vline(xintercept = 0) +
  scale_x_continuous(expand = expansion(mult = c(0, 0.05))) +
  labs(x = "Longest song length (minutes)", y = "Album name") +
  theme_classic(base_family = "Impact", base_size = 16) +
  theme(
    plot.background = element_rect(fill = "hotpink2"),
    panel.background = element_rect(fill = "hotpink2"),
    text = element_text(colour = "skyblue4"),
    axis.text = element_text(colour = "skyblue4")
  )

# - Which album is the most 'danceable'? ---------------------------------------

# Chart
taylor_album_songs |>
  group_by(album_name) |> 
  summarise(
    danceability = mean(danceability)
  ) |> 
  ggplot(aes(x = danceability, y = album_name)) +
  geom_col()

# Chart (Nick's version)
taylor_album_songs |>
  group_by(album_name) |> 
  summarise(
    danceability = mean(danceability)
  ) |> 
  arrange(danceability) |> 
  mutate(album_name = fct_inorder(album_name)) |> 
  ggplot(aes(x = danceability, y = album_name)) +
  geom_col(fill = "yellowgreen") +
  geom_text(aes(label = round(danceability, digits = 2)), hjust = 1, colour = "skyblue4", family = "Times New Roman") +
  geom_vline(xintercept = 0) +
  scale_x_continuous(expand = expansion(mult = c(0, 0.05))) +
  labs(x = "Danceability", y = "Album name") +
  theme_classic(base_family = "Times New Roman", base_size = 20) +
  theme(
    plot.background = element_rect(fill = "hotpink2"),
    panel.background = element_rect(fill = "hotpink2"),
    text = element_text(colour = "skyblue4"),
    axis.text = element_text(colour = "skyblue4")
  )

# - Is there a relationship between 'acousticness' and 'energy'? ---------------

# Chart
taylor_album_songs |>
  ggplot(aes(x = acousticness, y = energy)) +
  geom_point()

# Chart (Nick's version)
taylor_album_songs |>
  ggplot(aes(x = acousticness, y = energy)) +
  geom_point(colour = "yellowgreen") +
  geom_smooth(se = FALSE, colour = "skyblue4") +
  labs(
    title = "Songs that are more acoustic have less energy", y = "Energy", x = "Acousticness"
  ) +
  theme_classic(base_family = "Sans Serif", base_size = 20) +
  theme(
    plot.background = element_rect(fill = "hotpink2"),
    panel.background = element_rect(fill = "hotpink2"),
    text = element_text(colour = "skyblue4"),
    axis.text = element_text(colour = "skyblue4")
  )

# - Is there a relationship between 'loudness' and 'energy'? -------------------

# Chart
taylor_album_songs |>
  ggplot(aes(x = loudness, y = energy)) +
  geom_point()

# Chart (Nick's version)
taylor_album_songs |>
  ggplot(aes(x = loudness, y = energy)) +
  geom_point(colour = "yellowgreen") +
  geom_smooth(se = FALSE, colour = "skyblue4") +
  labs(
    title = "Songs that are louder have more energy", y = "Energy", x = "Loudness"
  ) +
  theme_classic(base_family = "Sans Serif", base_size = 20) +
  theme(
    plot.background = element_rect(fill = "hotpink2"),
    panel.background = element_rect(fill = "hotpink2"),
    text = element_text(colour = "skyblue4"),
    axis.text = element_text(colour = "skyblue4")
  )

# - Are albums that are more 'danceable' more popular according to 'users'? ----

# Chart
taylor_album_songs |> 
  group_by(album_name) |> 
  summarise(
    danceability = mean(danceability),
    critic_album_score = mean(critic_album_score),
    user_album_score = mean(user_album_score)
  ) |> 
  ggplot(aes(x = danceability, y = user_album_score)) +
  geom_point()

# Chart (Nick's version)
taylor_album_songs |> 
  group_by(album_name) |> 
  summarise(
    danceability = mean(danceability),
    critic_album_score = mean(critic_album_score),
    user_album_score = mean(user_album_score)
  ) |> 
  ggplot(aes(x = danceability, y = user_album_score)) +
  geom_point(colour = "skyblue4", size = 4) +
  geom_smooth(method = "lm", se = FALSE, colour = "yellowgreen") +
  labs(
    title = "Albums that are more danceable are less popular",
    x = "Danceability", y = "User score"
    ) +
  theme_classic(base_family = "Arial", base_size = 20) +
  theme(
    plot.background = element_rect(fill = "hotpink2"),
    panel.background = element_rect(fill = "hotpink2"),
    text = element_text(colour = "skyblue4"),
    axis.text = element_text(colour = "skyblue4")
  )

# - Are albums with more songs more popular according to 'users'? --------------

# Chart
taylor_album_songs |> 
  group_by(album_name) |> 
  summarise(
    n_tracks = n(),
    critic_album_score = mean(critic_album_score),
    user_album_score = mean(user_album_score)
  ) |> 
  ggplot(aes(x = n_tracks, y = user_album_score)) +
  geom_point()

# Chart (Nick's version)
taylor_album_songs |> 
  group_by(album_name) |> 
  summarise(
    n_tracks = n(),
    critic_album_score = mean(critic_album_score),
    user_album_score = mean(user_album_score)
  ) |> 
  ggplot(aes(x = n_tracks, y = user_album_score)) +
  geom_point(colour = "skyblue4", size = 4) +
  geom_smooth(method = "lm", se = FALSE, colour = "yellowgreen") +
  labs(
    title = "Albums with more tracks are more popular",
    x = "Number of songs", y = "User score"
  ) +
  theme_classic(base_family = "Arial", base_size = 20) +
  theme(
    plot.background = element_rect(fill = "hotpink2"),
    panel.background = element_rect(fill = "hotpink2"),
    text = element_text(colour = "skyblue4"),
    axis.text = element_text(colour = "skyblue4")
  )
