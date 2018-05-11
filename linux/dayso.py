N=int(input('Nhap N: '))
def inn(N):
	for i in range(1,N+1):
		print(i)
def inchan(N):
	s=0
	for i in range(1,N+1):
		if(i%2==0):
			s+=i
	print('Tong chan: ',s)
inn(N)
inchan(N)
