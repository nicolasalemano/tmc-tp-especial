%script trabajo especial
clear
clc

%SCRIPT

epsilon = 0.1;
DNI=28872690;


[probabilidad1, todas_las_probabilidades1]=calcular_probabilidad_fallos_sucesivos(epsilon,DNI);
fprintf('     Probabilidad actual:________________: %f\n', probabilidad1);
fprintf('     Epsilon:____________________________: %f\n', epsilon);
fprintf('     DNI:________________________________: %i\n', DNI);
figure, plot(todas_las_probabilidades1);
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on

fprintf('\n\n\n\n');

epsilon = 0.01;
[probabilidad2, todas_las_probabilidades2]=calcular_probabilidad_fallos_sucesivos(epsilon,DNI);
fprintf('     Probabilidad actual 2:______________: %f\n', probabilidad2);
fprintf('     epsilon 2:__________________________: %f\n', epsilon);
fprintf('     DNI 2:______________________________: %i\n', DNI);
figure, plot(todas_las_probabilidades2);

xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on

fprintf('\n\n\n\n');

epsilon = 0.00001;
[probabilidad3, todas_las_probabilidades3]=calcular_probabilidad_fallos_sucesivos(epsilon,DNI);
fprintf('     Probabilidad actual 3:______________: %f\n', probabilidad3);
fprintf('     epsilon 3:__________________________: %f\n', epsilon);
fprintf('     DNI 3:______________________________: %i\n', DNI);
figure, plot(todas_las_probabilidades3);

xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on


desv_principio1= std(todas_las_probabilidades1(1:20));
desv_final1=std(todas_las_probabilidades1(end-19:end));

desv_principio2= std(todas_las_probabilidades2(1:20));
desv_final2=std(todas_las_probabilidades2(end-19:end));

desv_principio3= std(todas_las_probabilidades3(1:20));
desv_final3=std(todas_las_probabilidades3(end-19:end));

fprintf('\n\n\n\n');
fprintf('     +--------------------------------------+\n');
fprintf('     |             DESVIOS                  |\n');
fprintf('     |            epsilon = 0.1             |\n');
fprintf('     +--------------------------------------+\n');
fprintf('     desvio estandar de los primeros 20 valores: %f\n', desv_principio1);
fprintf('     desvio estandar de los ultimos 20 valores: %f\n', desv_final1);

fprintf('\n\n');
fprintf('     +--------------------------------------+\n');
fprintf('     |               DESVIOS                |\n');
fprintf('     |            epsilon = 0.01            |\n');
fprintf('     +--------------------------------------+\n');
fprintf('     desvio estandar de los primeros 20 valores: %f\n', desv_principio2);
fprintf('     desvio estandar de los ultimos 20 valores: %f\n', desv_final2);

fprintf('\n\n');
fprintf('     +--------------------------------------+\n');
fprintf('     |               DESVIOS                |\n');
fprintf('     |           epsilon = 0.00001          |\n');
fprintf('     +--------------------------------------+\n');
fprintf('     desvio estandar de los primeros 20 valores: %f\n', desv_principio3);
fprintf('     desvio estandar de los ultimos 20 valores: %f\n', desv_final3);