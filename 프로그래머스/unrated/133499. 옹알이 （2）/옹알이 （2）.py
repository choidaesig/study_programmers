def solution(babbling):
    answer = ["aya","ye","woo","ma"]
    cnt=0
    for i in babbling:  # ["ayaye", "uuu", "yeye", "yemawoo", "ayaayaa"]
        res=0
        word=list(i)
        while len(word)>0:
            if word[0]=="a":
                if res==1:
                    break
                else:
                    k="".join(word[0:3])
                    if k in answer:
                        del word[0:3]
                        res=1
                    else:
                        break
            
            elif word[0]=="w":
                if res==2:
                    break
                else:
                    k="".join(word[0:3])
                    if k in answer:
                        del word[0:3]
                        res=2
                    else:
                        break
                
            elif word[0]=="y":
                if res==3:
                    break
                else:
                    k="".join(word[0:2])
                    if k in answer:
                        del word[0:2]
                        res=3
                    else:
                        break
                    
            elif word[0]=="m":  
                if res==4:
                    break
                else:
                    k="".join(word[0:2])
                    if k in answer:
                        del word[0:2]
                        res=4
                    else:
                        break
            else:
                break
        if len(word)==0:
            cnt+=1
    return cnt