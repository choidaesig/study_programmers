string = input()
answer=list(string)
#ord a=97 A=65
for i in range(len(answer)):
    if ord(answer[i])>=97:
        answer[i]=answer[i].upper()
    else:
        answer[i]=answer[i].lower()
print("".join(answer))