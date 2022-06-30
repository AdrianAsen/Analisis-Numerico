function aitken
%Valores de Entrada: 
% número de valores=N La sucesion fx
syms n;
N0=input('El número de valores para usar el método: ');
fx=input('La sucesión es: ');

%inline() construye un objeto de funcion en linea a
%partir de la expresion
f=inline(fx);

disp('La convergencia acelerada es:');

for i=1:N0
    p0=f(i);
    p1=f(i+1);
    p2=f(i+2);
    p=p0-((p1-p0)*(p1-p0))/(p2-2*p1+p0);
    disp(p);
    
    %X=[p,p];
    %Y=[0,f(p)];
    plot(i,p,'bo-','markersize',5);
    %X=[f,pI];
    %Y=[f(p0),f(pI)];
    plot(i,f(i),'ro-','markersize',5);
    fplot(fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
    title('Método de aitken'); hold on; grid on; %Título de la función.
    axis([-10 10 -10  10])
    line([-100 100],[0 0],'Color','k','LineStyle','--'); %Marca el eje X.
    line([0 0],[-100 100],'Color','k','LineStyle','--'); %Marca el eje Y.
    xlabel('Eje X') ;
    ylabel('Eje Y') ;
    pause
end
