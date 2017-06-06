%script trabajo especial
clear
clc

%SCRIPT

epsilon = 0.1;
DNI=28872690;


[probabilidad1, todas_las_probabilidades1]=calcular_probabilidad_fallos_sucesivos(epsilon,DNI);
fprintf('Probabilidad actual: %f\n', probabilidad1);
fprintf('epsilon: %i\n', epsilon);
fprintf('DNI: %i\n', DNI);
figure, plot(todas_las_probabilidades1);

xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on


epsilon = 0.01;
[probabilidad2, todas_las_probabilidades2]=calcular_probabilidad_fallos_sucesivos(epsilon,DNI);
fprintf('Probabilidad actual 2°: %f\n', probabilidad2);
fprintf('epsilon 2°: %i\n', epsilon);
fprintf('DNI 2°: %i\n', DNI);
figure, plot(todas_las_probabilidades2);

xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on

epsilon = 0.00001;
[probabilidad3, todas_las_probabilidades3]=calcular_probabilidad_fallos_sucesivos(epsilon,DNI);
fprintf('Probabilidad actual 3°: %f\n', probabilidad3);
fprintf('epsilon 3°: %i\n', epsilon);
fprintf('DNI 3°: %i\n', DNI);
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


fprintf('desvio estandar 1°: %f\n', desv_final1);