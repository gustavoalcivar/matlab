function [x,b]=noroeste(s,d)
% [x,b]=noroeste(s,d)
% x: envos usando noroeste-regla (m*n)
% b: 1 para cada variables bsicas 0 para no bsica (m*n)
% s: ofertas  (m*1)
% d: demandas (n*1)
%

if (sum(s)~=sum(d)), 
  disp('ERROR: El total de la oferta no es igual al total de la demanda.');
  return; 
end
m=length(s);
n=length(d);
i=1;
j=1;
x=zeros(m,n);
b=zeros(m,n);
while ((i<=m) & (j<=n))
   if s(i)<d(j)
      x(i,j)=s(i);
      b(i,j)=1;
      d(j)=d(j)-s(i);
      i=i+1;
    else
      x(i,j)=d(j);
      b(i,j)=1;
      s(i)=s(i)-d(j);
      j=j+1;
    end
end
