## factror
# Factors in R
# Factors are used to handle categorical variables and store them as levels. 
# They are useful in statistical modeling.

# Example Code
# Creating a factor variable
fruit <- factor(c("apple", "banana", "apple", "cherry", "banana", "cherry", "apple"))

# Displaying the factor
print("Factor Variable:")
print(fruit)

# Checking the levels of the factor
print("Levels:")
print(levels(fruit))

# Modifying levels
levels(fruit) <- c("Apple", "Banana", "Cherry")
print("Modified Levels:")
print(fruit)

# Converting a factor to numeric values
numeric_values <- as.numeric(fruit)
print("Numeric Values:")
print(numeric_values)

# Summary of the factor
print("Summary of Factor:")
print(summary(fruit))

# Adding a new level 'Mango'
fruit <- factor(fruit, levels = c("Apple", "Banana", "Cherry", "Mango"))
print("Levels after adding Mango:")
print(levels(fruit))

# Adding new levels 'Grape'
levels(fruit) <- c(levels(fruit), "Grape")
print("Levels after adding Grape:")
print(levels(fruit))

fruit
as.integer(fruit)

levels(fruit) <- sort(c(levels(fruit)))
fruit[8] <- "Grape"
fruit[9] <- "Mango"
as.integer(fruit)

##########################################

bt <- c('A', 'B', 'B', 'O', 'AB', 'A')  # 문자형 벡터 bt 정의
bt.new <- factor(bt)                    # 팩터 bt.new 정의
bt                                      # 벡터 bt의 내용 출력
bt.new                                  # 팩터 bt.new의 내용 출력
bt[5]                                   # 벡터 bt의 5번째 값 출력
bt.new[5]  

# 팩터 bt.new의 5번째 값 출력
levels(bt.new)                          # 팩터에 저장된 값의 종류를 출력
as.integer(bt.new)                      # 팩터의 문자값을 숫자로 바꾸어 출력
bt.new[7] <- 'B'                        # 팩터 bt.new의 7번째에 'B' 저장
bt.new[8] <- 'C'                        # 팩터 bt.new의 8번째에 'C' 저장
bt.new                                  # 팩터 bt.new의 내용 출력
