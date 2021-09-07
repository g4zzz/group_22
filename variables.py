
# 1) Create variable of type String
a= 'Hello world'
print (type(a))
print (a)

#2) Create variable of type Integer
b=int(4)
print (type(b))
print (b)

#3) Create variable of type Float
c=float(4)
print (type(c))
print (c)

#4) Create variable of type Bytes
d=bytes(1)
print (type(d))
print (d)

#5) Create variable of type List
e=['STRING', 'FLOAT', 'INT']
print (type(e))
print (e)

#6) Create variable of type Tuple
f =('string', 'float', 'tuple')
print (type(f))
print (f)

#7) Create variable of type Set
g ={'string'}
print (type(g))
print (g)

#8) Create variable of type Frozenset
h =frozenset ('string')
print (type(h))
print (h)

#9) Create variable of type Dict
i = {
    'key1': 'value1',
    'key2': 'value2'
}
print (type(i))
print (i)

#10) Print all of the above-listed variables with type to console.
list2 = [a, b, c, d, e, f, g, h, i]
for i in list2:
    print(i, type(i))

#11) Create two variables of type String, create a final variable. Print to a console.
i1 = 'Nice'
i2 = 'Job'
x= i1+" "+i2
print(x)

#12) Create two variables of type Integer, create a final variable. Print to a console.
i3 = 100
i4 = 33
y= i3+i4
print(y)

# 13) Create a new variable in which the division of the previous Int counted. Print to a console.
y1= i3/i4
print(y1)

# 14) Create a new variable in which the multiply of the previous Int counted. Print to a console.
y2= i3*i4
print(format(y2, ','))

# 15) Create a new variable in which the division without leftovers of the previous Int counted. Print to a console.
y3= i3//i4
print(y3)

# 16) Create a new variable which count leftovers of the division previous Int. Print to a console.
y4= i3%i4
print(y4)


