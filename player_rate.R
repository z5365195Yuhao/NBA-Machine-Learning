library(readxl)
team_dif <- read_excel("team_difference.xlsx")
fit_team_dif = lm(formula = PTS  ~ FGM + FGA + `FG%` + `3PM` + `3PA` + `3P%` + 
                    FTM + FTA + `FT%` + OREB + DREB + REB + AST + STL + BLK + 
                    TOV + PF, data = team_dif)

print(summary(fit_team_dif))
#FGM  2.000e+00
#`3PM`1.000e+00
#FTM 1.000e+00

player <- read_excel("player_box_score_with_weights.xlsx")
library(tidyverse)
player_rate = player %>%
  mutate(rate = 2*FGM +`3PM` + FTM, GameResult = abs(`.+/-`)) %>%
  select(PLAYER,`GAME DATE`,GameResult,rate)
install.packages("writexl")
library("writexl")
write_xlsx(player_rate,"player_rate_with_weights.xlsx")



