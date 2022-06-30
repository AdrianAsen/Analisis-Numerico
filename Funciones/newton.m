function newton
%Valores de Entrada: 
%p0 tolerancia=tol Iteraciones=N0 La funcion fx
syms x;
p0= input('El valor de p0 es: ');
tol=input('El valor de la tolerancia es: ');
N0=input('El numero de iteraciones sera: ');
fx=input('La funcion es: ');

%inline() construye un objeto de funcion en linea a
%partir de la expresion
f=inline(fx);
dfi=diff(fx);
df=inline(dfi);

fplot(fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
title('Método de Newton'); hold on; grid on; %Título de la función.
axis([-10 10 -10  10])
line([-10 10],[0 0],'Color','k','LineStyle','--'); %Marca el eje X.
line([0 0],[-10 10],'Color','k','LineStyle','--'); %Marca el eje Y.
xlabel('Eje X') ;
ylabel('Eje Y') ;
pause


%paso1
i=1;
%paso2
while(i<=N0)
%paso3    
    p=p0-f(p0)/df(p0);
    
    A=[p0,p0];
    B=[0,f(p0)];
    plot(A,B,'bo-','markersize',5);
    X=[p0,p];
    Y=[f(p0),0];
    plot(X,Y,'ro-','markersize',5);
    fplot(fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
    title('Método de Newton'); hold on; grid on; %Título de la función.
    axis([-10  10 -10 10])
    line([-100 100],[0 0],'Color','k','LineStyle','--'); %Marca el eje X.
    line([0 0],[-100 100],'Color','k','LineStyle','--'); %Marca el eje Y.
    xlabel('Eje X') ;
    ylabel('Eje Y') ;
    pause
    
%paso4
    if(abs(p-p0)<tol)
        disp('La solucion de f(x)=0 es:')
        disp(p)
        pause
    end 
%paso5
    i=i+1;
%paso6
    p0=p;
end 
%paso7
disp('El metodo falló')

