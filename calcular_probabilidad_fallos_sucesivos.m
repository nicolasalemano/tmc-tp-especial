%c=parcialitos+0.7*parcial


%FUNCION 
function [probabilidad, todas_las_probabilidades]=calcular_probabilidad_fallos_sucesivos(epsilon,DNI)

 todas_las_probabilidades = [];
  probabilidad_anterior = 0; 
  probabilidad_actual = 1;  
  casos_favorables = 0;
  contador=0;
  valorDNI_ante=0
  
  
 tic
  while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, contador)          
        probabilidad_anterior = probabilidad_actual;        
        valorDNI=my_mex_service(DNI);               
        contador=contador+1;        

        if((valorDNI_ante==0)&&(valorDNI==0))
            casos_favorables = casos_favorables + 1;
        end   
                    
         probabilidad_actual = casos_favorables / contador;
           
                   % TODO: Programar esta funcion para que calcule la probabilidad de acertarle
        % utilizando Montecarlo

        % Descomentar las siguientes 2 lineas para imprimir por pantalla las probabilidades
        %fprintf('%f\n', probabilidad_actual);
      %  fflush(stdout);
        
        % Colocar esto adentro del bucle
        % Esto es solamente para poder hacer el grafico ----------------------------
        todas_las_probabilidades = cat(1, todas_las_probabilidades, probabilidad_actual);
        % --------------------------------------------------------------------------
         valorDNI_ante=valorDNI;
  end
  toc%muestra el tiempo que tarda en ejecutar
    probabilidad = probabilidad_actual;

fprintf('contador%d\n', contador);
 
 
 
 end