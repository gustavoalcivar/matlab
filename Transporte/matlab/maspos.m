function [maxv,fil,col] = maspos(vargin);
%Esta funcin encuentra el valor mximo 
%y la posicin (fila, columna) de la matriz de entrada
%
% Salida: maxv valor mximo de la matriz de entrada
%         fil  fila donde existe el valor mximo
%         col  columna donde existe el valor mximo
%

dim = size(vargin);
if length(dim)~=2
    error('Matriz Invlida!');
end

maxv=0;
fil=0;
col=0;


% maxv valor m�ximo de la matriz de entrada
maxv = max(vargin(:));
if(maxv>0)
    % find: encuentra el valor m�ximo y la posici�n de la matriz de entrada 
    % 1 indica que encotrara un solo valor el primero que encuentre
    [fil,col] = find(vargin==maxv,1);
end
