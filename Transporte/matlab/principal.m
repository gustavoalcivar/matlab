clear all
clc

warning off all;

global n_demanda n_oferta Matrizp a b c ;
format rat;
format short;
%CADENAS DE CARACTERES ESTABLECIDAS PARA LAS VENTANAS Y DIALOGOS
C1='Cargando Datos...';
Ca='Cantidad de Ofertas:';
Cb='Cantidad de Demandas:';
%BANDERAS O CENTINELAS
band=0;
cent=1;
%no se suman filas ni columnas
m_ofer=0;
m_dem=0;
%CICLO WHILE GENERAL DETERMINA EL FIN O PARADA DE LA FUNCION
while(cent~=0)

    %DIALOGO: MUESTRA AREA DE CARGA DE DATOS
    resp=inputdlg({Ca,Cb},C1,1,{'0','0'});
    %centinela verifica si se han introducido datos en la ventana
    if((size(resp)~=0) & str2num(char(resp(2)))>=1 & str2num(char(resp(1)))>=1 )

        n_oferta=str2num(char(resp(1)));
        n_demanda=str2num(char(resp(2)));

        % VERIFICA QUE LA CANTIDAD DE OFERTA Y DEMANDA
        if (n_oferta>=2 & n_demanda>=2 & n_oferta<=10 & n_demanda<=10)

            v_oferta=zeros(n_oferta,1);
            v_demanda=zeros(1,n_demanda);

            Matrizp=zeros(n_oferta,n_demanda);

            %  Funcion cuadro()
            %  Descripci�n: Ventana de captura de datos que solicita
            %               la entrada de ofertas y demandas.
            %  Entradas:
            %           n_oferta: cantidad de Ofertas
            %           n_demanda: cantidad de Demandas
            %           m_ofer: catidad de Ofertas adicionales, inicialmente es cero
            %           m_dem: catidad de Demandas adicionales, inicialmente es cero
            %
            cuadro(n_oferta,n_demanda,m_ofer,m_dem);

            band=1;
            cent=0;
        else
            waitfor(warndlg('La cantidad de Ofetas y Demandas deben estar en un valor entre 2 y 10','ERROR AL INTRODUCIR LOS DATOS'));
        end
    elseif(length(resp)==0)
        cent=0;
    else
        %MENSAJE DE ADVERTENCIA
        waitfor(warndlg(' ERROR AL INTRODUCIR LOS DATOS, POR FAVOR INTENTE DE NUEVO ','ERROR DE PROCESO'));
    end
end
