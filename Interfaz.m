function varargout = Interfaz(varargin)
% INTERFAZ MATLAB code for Interfaz.fig
%      INTERFAZ, by itself, creates a new INTERFAZ or raises the existing
%      singleton*.
%
%      H = INTERFAZ returns the handle to a new INTERFAZ or the handle to
%      the existing singleton*.
%
%      INTERFAZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZ.M with the given input arguments.
%
%      INTERFAZ('Property','Value',...) creates a new INTERFAZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Interfaz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Interfaz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Interfaz

% Last Modified by GUIDE v2.5 26-Jun-2022 23:02:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Interfaz_OpeningFcn, ...
                   'gui_OutputFcn',  @Interfaz_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Interfaz is made visible.
function Interfaz_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Interfaz (see VARARGIN)

% Choose default command line output for Interfaz
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Interfaz wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Interfaz_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in graf_biseccion.
function graf_biseccion_Callback(hObject, eventdata, handles)
%Valores de Entrada: 
%a b tolerancia=tol Iteraciones=N0 La funcion fx
syms x;
a = str2double(get(handles.valueA, 'String'));
b = str2double(get(handles.valueB, 'String'));
tol = str2double(get(handles.valueTOL, 'String'));
N0 = str2double(get(handles.valueN0, 'String'));
fx = eval(get(handles.valueFX, 'String'));

%inline() construye un objeto de funcion en linea a
%partir de la expresion
f=inline(fx);

%grafica inicial
plot(handles.axes1,b,f(b),'ro-');
plot(handles.axes1,a,f(a),'ro-');
fplot(handles.axes1,fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
title('Método de la bisección'); hold on; grid on; %Título de la función.
axis([-10 10 -10  10])
line([-10 10],[0 0],'Color','k','LineStyle','--'); %Marca el eje X.
line([0 0],[-10 10],'Color','k','LineStyle','--'); %Marca el eje Y.
xlabel('Eje X');
ylabel('Eje Y');
pause
ac=1;

%paso1
i=1;
FA=f(a);
%paso2
while(i<=N0)
%paso3
    p=a+(b-a)/2;
    FP=f(p);
    
%Grafica en el tiempo    
    ac=ac*0.5;
    plot(handles.axes1,b,f(b),'ro-');
    plot(handles.axes1,a,f(a),'ro-');
    plot(handles.axes1,p,FP,'bo-');
    fplot(handles.axes1,fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
    title('Método de la bisección'); hold on; grid on; %Título de la función.
    axis([a-ac b+ac f(a)-ac  f(b)+ac])
    line([-10 10],[0 0],'Color','k','LineStyle','--'); %Marca el eje X.
    line([0 0],[-10 10],'Color','k','LineStyle','--'); %Marca el eje Y.
    xlabel('Eje X') ;
    ylabel('Eje Y') ;
    pause

%paso4
    if((FP==0)|((b-a)/2<tol))
        disp('La solucion de f(x)=0 es:')
        disp(p)
        pause
    end
%paso5
    i=i+1;
%paso6    
    if(FA*FP>0)
        a=p;
        FA=FP;
    else
        b=p;
    end
end
%paso7
disp('El metodo falló')



function valueA_Callback(hObject, eventdata, handles)
% hObject    handle to valueA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valueA as text
%        str2double(get(hObject,'String')) returns contents of valueA as a double


% --- Executes during object creation, after setting all properties.
function valueA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valueA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function valueB_Callback(hObject, eventdata, handles)
% hObject    handle to valueB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valueB as text
%        str2double(get(hObject,'String')) returns contents of valueB as a double


% --- Executes during object creation, after setting all properties.
function valueB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valueB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function valueN0_Callback(hObject, eventdata, handles)
% hObject    handle to valueN0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valueN0 as text
%        str2double(get(hObject,'String')) returns contents of valueN0 as a double


% --- Executes during object creation, after setting all properties.
function valueN0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valueN0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function valueFX_Callback(hObject, eventdata, handles)
% hObject    handle to valueFX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valueFX as text
%        str2double(get(hObject,'String')) returns contents of valueFX as a double


% --- Executes during object creation, after setting all properties.
function valueFX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valueFX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function valueTOL_Callback(hObject, eventdata, handles)
% hObject    handle to valueTOL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valueTOL as text
%        str2double(get(hObject,'String')) returns contents of valueTOL as a double


% --- Executes during object creation, after setting all properties.
function valueTOL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valueTOL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function freq_Callback(hObject, eventdata, handles)
% hObject    handle to freq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function freq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to freq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in graf_newton.
function graf_newton_Callback(hObject, eventdata, handles)
%Valores de Entrada: 
%p0 tolerancia=tol Iteraciones=N0 La funcion fx
syms x;
p0 = str2double(get(handles.valueP0, 'String'));
tol = str2double(get(handles.valueTOL, 'String'));
N0 = str2double(get(handles.valueN0, 'String'));
fx = eval(get(handles.valueFX, 'String'));

%inline() construye un objeto de funcion en linea a
%partir de la expresion
f=inline(fx);
dfi=diff(fx);
df=inline(dfi);

fplot(handles.axes1,fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
title('Método de Newton'); hold on; grid on; %Título de la función.
axis([-10 10 -10  10])
line([-10 10],[0 0],'Color','k','LineStyle','--'); %Marca el eje X.
line([0 0],[-10 10],'Color','k','LineStyle','--'); %Marca el eje Y.
xlabel('Eje X') ;
ylabel('Eje Y') ;
pause
ac=1;

%paso1
i=1;
%paso2
while(i<=N0)
%paso3    
    p=p0-f(p0)/df(p0);
    
    A=[p0,p0];
    B=[0,f(p0)];
    plot(handles.axes1,A,B,'bo-','markersize',5);
    X=[p0,p];
    Y=[f(p0),0];
    plot(handles.axes1,X,Y,'ro-','markersize',5);
    fplot(handles.axes1,fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
    title('Método de Newton'); hold on; grid on; %Título de la función.
    axis([p0-ac  p+ac f(p0)-ac f(p)+ac])
    line([-10 10],[0 0],'Color','k','LineStyle','--'); %Marca el eje X.
    line([0 0],[-10 10],'Color','k','LineStyle','--'); %Marca el eje Y.
    xlabel('Eje X') ;
    ylabel('Eje Y') ;
    pause
    ac=ac*0.5;
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


% --- Executes on button press in graf_secante.
function graf_secante_Callback(hObject, eventdata, handles)
%Valores de Entrada: 
%p0, p1 tolerancia=tol Iteraciones=N0 La funcion fx
syms x;
p0 = str2double(get(handles.valueP0, 'String'));
p1 = str2double(get(handles.valueP1, 'String'));
tol = str2double(get(handles.valueTOL, 'String'));
N0 = str2double(get(handles.valueN0, 'String'));
fx = eval(get(handles.valueFX, 'String'));

%inline() construye un objeto de funcion en linea a
%partir de la expresion
f=inline(fx);

fplot(handles.axes1,fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
title('Método de la secante'); hold on; grid on; %Título de la función.
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
    
    pI=p1;
    
    X=[p,p];
    Y=[0,f(p)];
    plot(X,Y,'bo-','markersize',5);
    X=[p0,pI];
    Y=[f(p0),f(pI)];
    plot(handles.axes1,X,Y,'ro-','markersize',5);
    fplot(handles.axes1,fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
    title('Método de la secante'); hold on; grid on; %Título de la función.
    axis([-10 10 -10  10])
    line([-100 100],[0 0],'Color','k','LineStyle','--'); %Marca el eje X.
    line([0 0],[-100 100],'Color','k','LineStyle','--'); %Marca el eje Y.
    xlabel('Eje X') ;
    ylabel('Eje Y') ;
    pause
    
    
%paso4
    if(abs(p-p1)<tol)
        disp('La solucion de f(x)=0 es:')
        disp(p)
        pause
    end
%paso5
    i=i+1;
%paso6
    p0=p1;
    q0=q1;
    p1=p;
    q1=f(p);
end
%paso7
disp('El metodo falló')


% --- Executes on button press in graf_falsaPosicion.
function graf_falsaPosicion_Callback(hObject, eventdata, handles)
%Valores de Entrada: 
%p0 p1 tolerancia=tol Iteraciones=N0 La funcion fx

syms x;
p0 = str2double(get(handles.valueP0, 'String'));
p1 = str2double(get(handles.valueP1, 'String'));
tol = str2double(get(handles.valueTOL, 'String'));
N0 = str2double(get(handles.valueN0, 'String'));
fx = eval(get(handles.valueFX, 'String'));

%inline() construye un objeto de funcion en linea a
%partir de la expresion
f=inline(fx);

fplot(handles.axes1,fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
title('Método de la Falsa Posición'); hold on; grid on; %Título de la función.
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
    plot(handles.axes1,X,Y,'bo-','markersize',5);
    X=[p0,pI];
    Y=[f(p0),f(pI)];
    plot(handles.axes1,X,Y,'ro-','markersize',5);
    fplot(handles.axes1,fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
    title('Método de la Falsa Posición'); hold on; grid on; %Título de la función.
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


% --- Executes on button press in graf_aitken.
function graf_aitken_Callback(hObject, eventdata, handles)
%Valores de Entrada: 
% número de valores=N La sucesion fx
syms n;
N0=str2double(get(handles.valueN0, 'String'));
fx=eval(get(handles.valueFX, 'String'));

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
    plot(handles.axes1,i,p,'bo-','markersize',5);
    %X=[f,pI];
    %Y=[f(p0),f(pI)];
    plot(handles.axes1,i,f(i),'ro-','markersize',5);
    fplot(handles.axes1,fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
    title('Método de Aitken'); hold on; grid on; %Título de la función.
    axis([-10 10 -10  10])
    line([-100 100],[0 0],'Color','k','LineStyle','--'); %Marca el eje X.
    line([0 0],[-100 100],'Color','k','LineStyle','--'); %Marca el eje Y.
    xlabel('Eje X') ;
    ylabel('Eje Y') ;
    pause
end


% --- Executes on button press in graf_steffensen.
function graf_steffensen_Callback(hObject, eventdata, handles)
%Valores de Entrada: 
%p0 tolerancia=tol Iteraciones=N0 La funcion fx

syms x;
p0 = str2double(get(handles.valueP0, 'String'));
tol = str2double(get(handles.valueTOL, 'String'));
N0 = str2double(get(handles.valueN0, 'String'));
fx = eval(get(handles.valueFX, 'String'));

%inline() construye un objeto de funcion en linea a
%partir de la expresion
f=inline(fx);

fplot(handles.axes1,fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
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

    X=[-100,100];
    Y=[-100,100];
    plot(X,Y,'go-','markersize',5);
    %X=[p,p];
    %Y=[0,f(p)];
    plot(handles.axes1,p,f(p),'bo-','markersize',5);
    %X=[f,pI];
    %Y=[f(p0),f(pI)];
    plot(handles.axes1,p1,f(p1),'ro-','markersize',5);
    fplot(handles.axes1,fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
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


% --- Executes on button press in graf_muller.
function graf_muller_Callback(hObject, eventdata, handles)
%Valores de Entrada: 
%p0, p1, p2 tolerancia=tol Iteraciones=N0 La funcion fx
syms x;
p0 = str2double(get(handles.valueP0, 'String'));
p1 = str2double(get(handles.valueP1, 'String'));
p2 = str2double(get(handles.valueP2, 'String'));
tol = str2double(get(handles.valueTOL, 'String'));
N0 = str2double(get(handles.valueN0, 'String'));
fx = eval(get(handles.valueFX, 'String'));

%inline() construye un objeto de funcion en linea a
%partir de la expresion
f=inline(fx);

fplot(handles.axes1,fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
title('Método de Müller'); hold on; grid on; %Título de la función.
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
    plot(handles.axes1,X,Y,'bo-','markersize',5);
    fplot(handles.axes1,fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
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



function valueP0_Callback(hObject, eventdata, handles)
% hObject    handle to valueP0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valueP0 as text
%        str2double(get(hObject,'String')) returns contents of valueP0 as a double


% --- Executes during object creation, after setting all properties.
function valueP0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valueP0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function valueP1_Callback(hObject, eventdata, handles)
% hObject    handle to valueP1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valueP1 as text
%        str2double(get(hObject,'String')) returns contents of valueP1 as a double


% --- Executes during object creation, after setting all properties.
function valueP1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valueP1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function valueP2_Callback(hObject, eventdata, handles)
% hObject    handle to valueP2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valueP2 as text
%        str2double(get(hObject,'String')) returns contents of valueP2 as a double


% --- Executes during object creation, after setting all properties.
function valueP2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valueP2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
