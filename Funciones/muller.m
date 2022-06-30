function muller
%Valores de Entrada: 
%p0, p1, p2 tolerancia=tol Iteraciones=N0 La funcion fx
syms x;
p0= input('El valor de p0 es: ');
p1= input('El valor de p1 es: ');
p2= input('El valor de p2 es: ');
tol=input('El valor de la tolerancia es: ');
N0=input('El numero de iteraciones sera: ');
fx=input('La funcion es: ');
%inline() construye un objeto de funcion en linea a
%partir de la expresion
f=inline(fx);

fplot(fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
title('Método de la bisección'); hold on; grid on; %Título de la función.
axis([-10 10 -10  10])
line([-10 10],[0 0],'Color','k','LineStyle','--'); %Marca el eje X.
line([0 0],[-10 10],'Color','k','LineStyle','--'); %Marca el eje Y.
xlabel('Eje X') ;
ylabel('Eje Y') ;
pause

%paso1
h1=p1-p0;
h2=p2-p1;
r1=(f(p1)-f(p0))/h1;
r2=(f(p2)-f(p1))/h2;
d=(r2-r1)/(h2-h1);
i=3;
%paso2
while(i<=N0)
%paso3
    b=r2+h2*d;
    D=sqrt(b*b-4*f(p2)*d);%sqrt(b^2-4ac)
%paso4
    if(abs(b-D)<abs(b+D))
        E=b+D;
    else
        E=b-D;
    end
%paso5
    h=-2*f(p2)/E;
    p=p2+h;
    
    X=[p0,p2,p1];
    Y=[f(p0),f(p2),f(p1)];
    plot(X,Y,'bo-','markersize',5);
    fplot(fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
    title('Método de Müller'); hold on; grid on; %Título de la función.
    axis([-10 10 -10  10])
    line([-100 100],[0 0],'Color','k','LineStyle','--'); %Marca el eje X.
    line([0 0],[-100 100],'Color','k','LineStyle','--'); %Marca el eje Y.
    xlabel('Eje X') ;
    ylabel('Eje Y') ;
    pause
    
%paso6
    if(abs(h)<tol)
        disp('La solucion de f(x)=0 es:')
        disp(p)
        pause
    end    
%paso7
    p0=p1;
    p1=p2;
    p2=p;
    h1=p1-p0;
    h2=p2-p1;
    r1=(f(p1)-f(p0))/h1;
    r2=(f(p2)-f(p1))/h2;
    d=(r2-r1)/(h2-h1);
    i=i+1;
end
%paso8
disp('El metodo falló')
    
    
    
    
