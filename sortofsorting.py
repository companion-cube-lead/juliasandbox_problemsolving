# https://open.kattis.com/problems/sortofsorting


from sys import stdin

for line in stdin:
  numberOfValues = int(line)

  if numberOfValues == 0:
    break
  
  nameList = []
  for i in range(numberOfValues):
    name = str(input())
    nameList.append(name)
  
  nameListInOrder = sorted(nameList, key=lambda name: name[:2])

  print(*nameListInOrder, sep="\n")

