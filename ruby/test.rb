p a = ["one", "two", 3 ]
p b = [1, 2, 3]
p a<<[1,6]
p a.flatten!
p c = (a&b).include?(1)