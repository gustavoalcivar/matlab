function varargout = DistribucionHipergeometrica(varargin)
% DISTRIBUCIONHIPERGEOMETRICA M-file for DistribucionHipergeometrica.fig
%      DISTRIBUCIONHIPERGEOMETRICA, by itself, creates a new DISTRIBUCIONHIPERGEOMETRICA or raises the existing
%      singleton*.
%
%      H = DISTRIBUCIONHIPERGEOMETRICA returns the handle to a new DISTRIBUCIONHIPERGEOMETRICA or the handle to
%      the existing singleton*.
%
%      DISTRIBUCIONHIPERGEOMETRICA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DISTRIBUCIONHIPERGEOMETRICA.M with the given input arguments.
%
%      DISTRIBUCIONHIPERGEOMETRICA('Property','Value',...) creates a new DISTRIBUCIONHIPERGEOMETRICA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DistribucionHipergeometrica_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DistribucionHipergeometrica_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DistribucionHipergeometrica

% Last Modified by GUIDE v2.5 27-Jul-2012 15:57:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DistribucionHipergeometrica_OpeningFcn, ...
                   'gui_OutputFcn',  @DistribucionHipergeometrica_OutputFcn, ...
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


% --- Executes just before DistribucionHipergeometrica is made visible.
function DistribucionHipergeometrica_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DistribucionHipergeometrica (see VARARGIN)

% Choose default command line output for DistribucionHipergeometrica
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DistribucionHipergeometrica wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DistribucionHipergeometrica_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in botonOK.
function botonOK_Callback(hObject, eventdata, handles)
% hObject    handle to botonOK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
N=str2double(get(handles.textM,'string'));
N2=str2double(get(handles.textM2,'string'));
N3=str2double(get(handles.textM3,'string'));
k=str2double(get(handles.textK,'string'));
k2=str2double(get(handles.textK2,'string'));
k3=str2double(get(handles.textK3,'string'));
n=str2double(get(handles.textN,'string'));
n2=str2double(get(handles.textN2,'string'));
n3=str2double(get(handles.textN3,'string'));
set(handles.textEsperanza,'String',num2str(''))
set(handles.textVarianza,'String',num2str(''))
set(handles.textEsperanza2,'String',num2str(''))
set(handles.textVarianza2,'String',num2str(''))
set(handles.textEsperanza3,'String',num2str(''))
set(handles.textVarianza3,'String',num2str(''))
elemento=maximo(0,n+k-N);
elemento2=maximo(0,n2+k2-N2);
elemento3=maximo(0,n3+k3-N3);
axes(handles.axes1)
if N>0&&n>0&&k>0&&k<=N&&n<=N
    i=1;
    while elemento<=minimo(k,n)
        x(i)=elemento;
        y(i)=hygepdf(elemento,N,k,n);
        i=i+1;
        elemento=elemento+1;
    end
    stem(x,y,'--b')
    p=k/N;
    set(handles.textEsperanza,'String',num2str(n*p))
    set(handles.textVarianza,'String',num2str(n*p*(1-p)*((N-n)/(N-1))))
    hold on
end
if N2>0&&n2>0&&k2>0&&k2<=N2&&n2<=N2
    i=1;
    while elemento2<=minimo(k2,n2)
        x2(i)=elemento2;
        y2(i)=hygepdf(elemento2,N2,k2,n2);
        i=i+1;
        elemento2=elemento2+1;
    end
    stem(x2,y2,'--g')
    p2=k2/N2;
    set(handles.textEsperanza2,'String',num2str(n2*p2))
    set(handles.textVarianza2,'String',num2str(n2*p2*(1-p2)*((N2-n2)/(N2-1))))
    hold on
end
if N3>0&&n3>0&&k3>0&&k3<=N3&&n3<=N3
    i=1;
    while elemento3<=minimo(k3,n3)
        x3(i)=elemento3;
        y3(i)=hygepdf(elemento3,N3,k3,n3);
        i=i+1;
        elemento3=elemento3+1;
    end
    stem(x3,y3,'--r')
    p3=k3/N3;
    set(handles.textEsperanza3,'String',num2str(n3*p3))
    set(handles.textVarianza3,'String',num2str(n3*p3*(1-p3)*((N3-n3)/(N3-1))))
    hold on
end
hold off




function textZ_Callback(hObject, eventdata, handles)
% hObject    handle to textZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textZ as text
%        str2double(get(hObject,'String')) returns contents of textZ as a double


% --- Executes during object creation, after setting all properties.
function textZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in botonCalcular.
function botonCalcular_Callback(hObject, eventdata, handles)
% hObject    handle to botonCalcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
z=str2double(get(handles.textZ,'string'));
N=str2double(get(handles.textM,'string'));
k=str2double(get(handles.textK,'string'));
n=str2double(get(handles.textN,'string'));
if z<=minimo(k,n)&&z>=maximo(0,n+k-N)&&N>0&&n>0&&k>0&&k<=N&&n<=N
    probabilidad=hygepdf(z,N,k,n);
    set(handles.prZ,'String',num2str(probabilidad))
    probabilidad2=hygecdf(z,N,k,n);
    set(handles.prZA,'String',num2str(probabilidad2))
end



% --- Executes on button press in botonAcumulado.
function botonAcumulado_Callback(hObject, eventdata, handles)
% hObject    handle to botonAcumulado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
N=str2double(get(handles.textM,'string'));
N2=str2double(get(handles.textM2,'string'));
N3=str2double(get(handles.textM3,'string'));
k=str2double(get(handles.textK,'string'));
k2=str2double(get(handles.textK2,'string'));
k3=str2double(get(handles.textK3,'string'));
n=str2double(get(handles.textN,'string'));
n2=str2double(get(handles.textN2,'string'));
n3=str2double(get(handles.textN3,'string'));
set(handles.textEsperanza,'String',num2str(''))
set(handles.textVarianza,'String',num2str(''))
set(handles.textEsperanza2,'String',num2str(''))
set(handles.textVarianza2,'String',num2str(''))
set(handles.textEsperanza3,'String',num2str(''))
set(handles.textVarianza3,'String',num2str(''))
elemento=maximo(0,n+k-N);
elemento2=maximo(0,n2+k2-N2);
elemento3=maximo(0,n3+k3-N3);
axes(handles.axes1)
if N>0&&n>0&&k>0&&k<=N&&n<=N
    i=1;
    while elemento<=minimo(k,n)
        x(i)=elemento;
        y(i)=hygecdf(elemento,N,k,n);
        i=i+1;
        elemento=elemento+1;
    end
    stem(x,y,'--b')
    p=k/N;
    set(handles.textEsperanza,'String',num2str(n*p))
    set(handles.textVarianza,'String',num2str(n*p*(1-p)*((N-n)/(N-1))))
    hold on
end
if N2>0&&n2>0&&k2>0&&k2<=N2&&n2<=N2
    i=1;
    while elemento2<=minimo(k2,n2)
        x2(i)=elemento2;
        y2(i)=hygecdf(elemento2,N2,k2,n2);
        i=i+1;
        elemento2=elemento2+1;
    end
    stem(x2,y2,'--g')
    p2=k2/N2;
    set(handles.textEsperanza2,'String',num2str(n2*p2))
    set(handles.textVarianza2,'String',num2str(n2*p2*(1-p2)*((N2-n2)/(N2-1))))
    hold on
end
if N3>0&&n3>0&&k3>0&&k3<=N3&&n3<=N3
    i=1;
    while elemento3<=minimo(k3,n3)
        x3(i)=elemento3;
        y3(i)=hygecdf(elemento3,N3,k3,n3);
        i=i+1;
        elemento3=elemento3+1;
    end
    stem(x3,y3,'--r')
    p3=k3/N3;
    set(handles.textEsperanza3,'String',num2str(n3*p3))
    set(handles.textVarianza3,'String',num2str(n3*p3*(1-p3)*((N3-n3)/(N3-1))))
    hold on
end
hold off




function textZ2_Callback(hObject, eventdata, handles)
% hObject    handle to textZ2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textZ2 as text
%        str2double(get(hObject,'String')) returns contents of textZ2 as a double


% --- Executes during object creation, after setting all properties.
function textZ2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textZ2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in botonCalcular2.
function botonCalcular2_Callback(hObject, eventdata, handles)
% hObject    handle to botonCalcular2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
z2=str2double(get(handles.textZ2,'string'));
N2=str2double(get(handles.textM2,'string'));
k2=str2double(get(handles.textK2,'string'));
n2=str2double(get(handles.textN2,'string'));
if z2<=minimo(k2,n2)&&z2>=maximo(0,n2+k2-N2)&&N2>0&&n2>0&&k2>0&&k2<=N2&&n2<=N2
    probabilidad=hygepdf(z2,N2,k2,n2);
    set(handles.prZ2,'String',num2str(probabilidad))
    probabilidad2=hygecdf(z2,N2,k2,n2);
    set(handles.prZA2,'String',num2str(probabilidad2))
end




function textZ3_Callback(hObject, eventdata, handles)
% hObject    handle to textZ3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textZ3 as text
%        str2double(get(hObject,'String')) returns contents of textZ3 as a double


% --- Executes during object creation, after setting all properties.
function textZ3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textZ3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in botonCalcular3.
function botonCalcular3_Callback(hObject, eventdata, handles)
% hObject    handle to botonCalcular3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
z3=str2double(get(handles.textZ3,'string'));
N3=str2double(get(handles.textM3,'string'));
k3=str2double(get(handles.textK3,'string'));
n3=str2double(get(handles.textN3,'string'));
if z3<=minimo(k3,n3)&&z3>=maximo(0,n3+k3-N3)&&N3>0&&n3>0&&k3>0&&k3<=N3&&n3<=N3
    probabilidad=hygepdf(z3,N3,k3,n3);
    set(handles.prZ3,'String',num2str(probabilidad))
    probabilidad2=hygecdf(z3,N3,k3,n3);
    set(handles.prZA3,'String',num2str(probabilidad2))
end




function textK_Callback(hObject, eventdata, handles)
% hObject    handle to textK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textK as text
%        str2double(get(hObject,'String')) returns contents of textK as a double


% --- Executes during object creation, after setting all properties.
function textK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textK3_Callback(hObject, eventdata, handles)
% hObject    handle to textK3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textK3 as text
%        str2double(get(hObject,'String')) returns contents of textK3 as a double


% --- Executes during object creation, after setting all properties.
function textK3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textK3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textK2_Callback(hObject, eventdata, handles)
% hObject    handle to textK2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textK2 as text
%        str2double(get(hObject,'String')) returns contents of textK2 as a double


% --- Executes during object creation, after setting all properties.
function textK2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textK2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textM_Callback(hObject, eventdata, handles)
% hObject    handle to textM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textM as text
%        str2double(get(hObject,'String')) returns contents of textM as a double


% --- Executes during object creation, after setting all properties.
function textM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textM3_Callback(hObject, eventdata, handles)
% hObject    handle to textM3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textM3 as text
%        str2double(get(hObject,'String')) returns contents of textM3 as a double


% --- Executes during object creation, after setting all properties.
function textM3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textM3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textM2_Callback(hObject, eventdata, handles)
% hObject    handle to textM2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textM2 as text
%        str2double(get(hObject,'String')) returns contents of textM2 as a double


% --- Executes during object creation, after setting all properties.
function textM2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textM2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textN_Callback(hObject, eventdata, handles)
% hObject    handle to textN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textN as text
%        str2double(get(hObject,'String')) returns contents of textN as a double


% --- Executes during object creation, after setting all properties.
function textN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textN3_Callback(hObject, eventdata, handles)
% hObject    handle to textN3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textN3 as text
%        str2double(get(hObject,'String')) returns contents of textN3 as a double


% --- Executes during object creation, after setting all properties.
function textN3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textN3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textN2_Callback(hObject, eventdata, handles)
% hObject    handle to textN2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textN2 as text
%        str2double(get(hObject,'String')) returns contents of textN2 as a double


% --- Executes during object creation, after setting all properties.
function textN2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textN2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
Menu
