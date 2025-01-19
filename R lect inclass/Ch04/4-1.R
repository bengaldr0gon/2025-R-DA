job.type <- 'A'

if(job.type == 'B') {
  bonus <- 200          # 직무 유형이 B일 때 실행
} else {
  bonus <- 100          # 직무 유형이 B가 아닌 나머지 경우 실행
}
print(bonus)

if (job.type == 'B') {
  bonus <- 200          # 직무 유형이 B일 때 실행
} else
  bonus <- 100          # 직무 유형이 B가 아닌 나머지 경우 실행

print(bonus)

#############################
x <- 5

if (x > 0)
  print("x는 양수입니다.") else
  print("x는 0이거나 음수입니다.")

if (x > 0) print("x는 양수입니다.") else print("x는 0이거나 음수입니다.")
