import csv
sent_bits = [1,1,1,1,1,0,0,1,0,1,1,0,1,1,1,1,0,1,1,0,1,1,0,0,0,1,1,0,1,1,1,1,0,0,1,0,0,0,0,0,0,1,1,1,0,0,1,1,0,1,1,1,0,1,1,1,0,1,1,0,0,0,0,1,0,1,1,0,0,1,1,1,0,0,1,0,0,0,0,0,0,1,1,1,0,0,1,1,0,1,1,1,0,1,1,1,0,1,1,0,0,0,0,1,0,1,1,0,0,1,1,1,0,1,1,0,0,1,1,1,0,1,1,1,1,0,0,1,0,0,1,0,0,0,0,0,0,1,1,1,0,0,1,1,0,1,1,1,0,1,1,1,0,1,1,0,0,0,0,1,0,1,1,0,0,1,1,1,0,0,1,0,0,0,0,0,0,0,1,0,0,1,0,0,0,1,1,1,0,1,1,1,0,1,1,0,0,0,0,1,0,1,1,0,0,1,1,1]
rec_bits = []
slice_bits = []
no = []

with open('rec_bits.dat', 'r') as csvfile:
	rec_bits_file = csv.reader(csvfile, delimiter=',')
	for row in rec_bits_file:
		rec_bits.append(row)

# print len(sent_bits)
# print len(rec_bits[0])

for j in xrange(500,len(rec_bits[0]),1000):
		slice_bits.append(rec_bits[0][j])
# print len(slice_bits)
# print slice_bits

#changing from strings to integers
for k in range(len(slice_bits)):
	slice_bits[k] = int(slice_bits[k])

#comparing the arrays to each other
for i in range(len(slice_bits)):
	if sent_bits[i] != slice_bits[i]:
		no.append(i)					#adds the index where they don't match to the no array
print no