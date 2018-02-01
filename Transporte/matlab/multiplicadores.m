function [u,v]=multiplicadores(x,c,b)
% [u,v]=multiplicadores(x,c,b)
% x: solucin actual (m*n)
% b: 1 para cada variables bsicas 0 para no bsicas (m*n)
% c: costos (m*n)
% u: multiplicadores de lagrange para las filas (m*1)
% v: multiplicadores de lagrange para las columnas (n*1)
%

[m,n]=size(x);
if sum(sum(b))< m+n-1
  disp('Error en multiplicadores')
  pause
else
  u=Inf*ones(m,1);
  v=Inf*ones(n,1);
  u(1)=0;   % elegir un multiplicador arbitrario = 0
  nr=1;
  while nr<m+n  % hasta que se asignan todos los multiplicadores 
    for fila=1:m
      for col=1:n
        if b(fila,col)>0
          if (u(fila)~=Inf) & (v(col)==Inf)
            v(col)=c(fila,col)-u(fila);
            nr=nr+1;
          elseif (u(fila)==Inf) & (v(col)~=Inf)
            u(fila)=c(fila,col)-v(col);
            nr=nr+1;
          end
        end
      end
    end
  end
end
