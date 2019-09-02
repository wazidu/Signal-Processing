n1=-2:1;
x=[1 2 3 4];
subplot(3,1,1);
stem(n1,x);
title('X') ;
axis([-4 4 -5 5]);
n2=0:3;
y=[1 1 1 1];
subplot(3,1,2);
stem(n2,y);
title('Y');
axis([-4 4 -5 5]);
n3 =min (min(n1) ,min( n2 ) ) : max ( max ( n1 ) , max ( n2 ) ); 
s1 =zeros(1,length (n3) );
s2 =s1;
s1 (find ( ( n3>=min( n1 ) ) & ( n3 <=max ( n1 ) )==1 ) )=x; 

s2 (find ( ( n3>=min ( n2 ) ) & ( n3 <=max ( n2 ))==1) )=y; 

mul=s1 + s2; 
subplot(3,1,3)
stem(n3,mul)
title('Z=X+Y');
axis([-4 4 -5 5]);

