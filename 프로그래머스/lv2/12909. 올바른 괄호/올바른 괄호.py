def solution(s):
    answer = True
    slist=[]
    for i in s:
        if i =="(":
            slist.append(i)
        else:
            if i not in s:
                return False
            else:
                if slist==[]:
                    return False
                slist.pop()
    if len(slist)>0:
        return False
    return True