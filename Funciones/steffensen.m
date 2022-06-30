function steffensen
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

fplot(fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
title('Método de Steffensen'); hold on; grid on; %Título de la función.
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
    p1=f(p0);
    p2=f(p1);
    p=p0-((p1-p0)*(p1-p0))/(p2-2*p1+p0);

    
    %X=[p,p];
    %Y=[0,f(p)];
    plot(p,f(p),'bo-','markersize',5);
    %X=[f,pI];
    %Y=[f(p0),f(pI)];
    plot(p1,f(p1),'ro-','markersize',5);
    fplot(fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
    title('Método de Steffensen'); hold on; grid on; %Título de la función.
    axis([-10 10 -10  10])
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
