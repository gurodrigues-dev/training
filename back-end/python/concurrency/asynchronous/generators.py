# List e Dict Comprehension
[
    x for x in range (1, 10)
]

# Generator por Comprehension
(x for x in range(1, 10))

for i in (x for x in range(1,10)):
    print(i)

# Generator por Function
def gera_range_1_10():
    for i in range(1,10):
        yield i

for i in gera_range_1_10():
    print(i)



