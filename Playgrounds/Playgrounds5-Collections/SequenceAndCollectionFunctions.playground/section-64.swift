let oneToFive = [1,2,3,4,5]
let oneToThree = [1,2,3]
startsWith(oneToFive, oneToThree)

let floats125 = [1.0, 2.0, 3.0, 4.0, 5.0]
let fuzzyPrefix = [1.01, 1.99, 3.01 ]
let isFuzzyPrefix = startsWith(floats125, fuzzyPrefix) { x,y in abs(x-y) < 0.02 }
isFuzzyPrefix

let to = stride(from:0, to:100, by:10)
map(to) { x in println(x) }
let through = stride(from:0, through:100, by:10)
map(through) { x in println(x) }






