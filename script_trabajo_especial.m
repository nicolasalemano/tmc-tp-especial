%script trabajo especial
clear
clc

%SCRIPT

epsilon = 0.1;
DNI=28872690;


[probabilidad, todas_las_probabilidades]=calcular_probabilidad_fallos_sucesivos(epsilon,DNI);
fprintf('Probabilidad actual: %f\n', probabilidad);
fprintf('epsilon: %i\n', epsilon);
fprintf('DNI: %i\n', DNI);
figure, plot(todas_las_probabilidades);

xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on


epsilon = 0.01;
[probabilidad, todas_las_probabilidades]=calcular_probabilidad_fallos_sucesivos(epsilon,DNI);
fprintf('Probabilidad actual 2°: %f\n', probabilidad);
fprintf('epsilon 2°: %i\n', epsilon);
fprintf('DNI 2°: %i\n', DNI);
figure, plot(todas_las_probabilidades);

xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on

epsilon = 0.00001;
[probabilidad, todas_las_probabilidades]=calcular_probabilidad_fallos_sucesivos(epsilon,DNI);
fprintf('Probabilidad actual 3°: %f\n', probabilidad);
fprintf('epsilon 3°: %i\n', epsilon);
fprintf('DNI 3°: %i\n', DNI);
figure, plot(todas_las_probabilidades);

xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on

