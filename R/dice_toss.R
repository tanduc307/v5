#### GIEO 1 HẠT XÚC XẮC

set.seed(111)

die <- 1:6

dice_toss_1d <- data.frame()

# Hàm gieo 1 viên xúc xắc
roll_1d <- function(){
        die <- 1:6
        dice_1d <- sample(die, size = 1, replace = TRUE)
        print(dice_1d)
        }

# Kết quả gieo 1 viên xúc xắc 10000 lần
for(i in 1:10000){
        dice <- sample(die, size = 1, replace = TRUE)
        dice_toss_1d <- rbind(dice_toss_1d, dice)
        }

table(dice_toss_1d)

#### GIEO 2 HẠT XÚC XẮC

# Hàm gieo 2 viên xúc xắc
roll_2d <- function(){
        die <- 1:6
        dice_2d <- sample(die, size = 2, replace = TRUE)
        sum(dice_2d)
}

# Kết quả gieo 2 viên xúc xắc 10000 lần

sum_all <- data.frame()

for(i in 1:100000){happy <- roll_2d()
                sum_all <- rbind(sum_all, happy)}

table(sum_all)

# Kết quả gieo 2 viên xúc xắc 10000 lần

dice_toss_2d <- data.frame()

for(i in 1:10000){
        dice_2d <- sample(die, size = 2, replace = TRUE)
        dice_toss_2d <- rbind(dice_toss_2d, dice_2d)
}

table(dice_toss_2d)

############### GIEO HAI HẠT XÚC SẮC VÀ GHI LẠI TỔ HỢP ĐIỂM #########



# Hàm gieo 2 viên xúc xắc
roll_2d_record <- function(){
        die <- 1:6
        dice_2d_record <- sample(die, size = 2, replace = TRUE)
        return(dice_2d_record)
}

result_2d <- data.frame()

for(i in 1:10000){happy_record <- roll_2d_record()
                  result_2d <- rbind(result_2d, happy_record)}

View(result_2d)

library(dplyr)

colnames(result_2d) <- c("dice_1", "dice_2")

result_2d_full <- result_2d %>% mutate(sum = dice_1 + dice_2)

View(result_2d_full)

sapply(result_2d_full, table)

write.csv(result_2d_full, "dice_test.csv")
