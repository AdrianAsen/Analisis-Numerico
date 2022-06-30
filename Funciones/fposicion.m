function fposicion
%Valores de Entrada: 
%p0 p1 tolerancia=tol Iteraciones=N0 La funcion fx

syms x;
p0= input('El valor de p0 es: ');
p1= input('El valor de p1 es: ');
tol=input('El valor de la tolerancia es: ');
N0=input('El numero de iteraciones sera: ');
fx=input('La funcion es: ');

%inline() construye un objeto de funcion en linea a
%partir de la expresion
f=inline(fx);

fplot(fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
title('Método de la falsa posición'); hold on; grid on; %Título de la función.
axis([-10 10 -10  10])
line([-10 10],[0 0],'Color','k','LineStyle','--'); %Marca el eje X.
line([0 0],[-10 10],'Color','k','LineStyle','--'); %Marca el eje Y.
xlabel('Eje X') ;
ylabel('Eje Y') ;
pause

%paso1
i=2;
q0=f(p0);
q1=f(p1);
%paso2
while(i<=N0)
%paso3
    p=p1-q1*(p1-p0)/(q1-q0);
%paso4
    if(abs(p-p1)<tol)
        disp('La solucion de f(x)=0 es:')
        disp(p)
        pause
    end
    
    pI=p1;
    
    X=[p,p];
    Y=[0,f(p)];
    plot(X,Y,'bo-','markersize',5);
    X=[p0,pI];
    Y=[f(p0),f(pI)];
    plot(X,Y,'ro-','markersize',5);
    fplot(fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
    title('Método de la falsa posición'); hold on; grid on; %Título de la función.
    axis([-10 10 -10  10])
    line([-100 100],[0 0],'Color','k','LineStyle','--'); %Marca el eje X.
    line([0 0],[-100 100],'Color','k','LineStyle','--'); %Marca el eje Y.
    xlabel('Eje X') ;
    ylabel('Eje Y') ;
    pause
    
%paso5
    i=i+1;
    q=f(p);
%paso6
    if(q*q1<0)
        p0=p1;
        q0=q1;
    end
%paso7    
    p1=p;
    q1=q;
end 
%paso8
disp('El metodo falló')
