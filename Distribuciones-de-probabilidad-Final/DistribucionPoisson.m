function varargout = DistribucionPoisson(varargin)
% DISTRIBUCIONPOISSON M-file for DistribucionPoisson.fig
%      DISTRIBUCIONPOISSON, by itself, creates a new DISTRIBUCIONPOISSON or raises the existing
%      singleton*.
%
%      H = DISTRIBUCIONPOISSON returns the handle to a new DISTRIBUCIONPOISSON or the handle to
%      the existing singleton*.
%
%      DISTRIBUCIONPOISSON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DISTRIBUCIONPOISSON.M with the given input arguments.
%
%      DISTRIBUCIONPOISSON('Property','Value',...) creates a new DISTRIBUCIONPOISSON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DistribucionPoisson_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DistribucionPoisson_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DistribucionPoisson

% Last Modified by GUIDE v2.5 27-Jul-2012 15:59:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DistribucionPoisson_OpeningFcn, ...
                   'gui_OutputFcn',  @DistribucionPoisson_OutputFcn, ...
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


% --- Executes just before DistribucionPoisson is made visible.
function DistribucionPoisson_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DistribucionPoisson (see VARARGIN)

% Choose default command line output for DistribucionPoisson
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DistribucionPoisson wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DistribucionPoisson_OutputFcn(hObject, eventdata, handles) 
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
lambda=str2double(get(handles.textLambda,'string'));
lambda2=str2double(get(handles.textLambda2,'string'));
lambda3=str2double(get(handles.textLambda3,'string'));
set(handles.textEsperanza,'String',num2str(''))
set(handles.textVarianza,'String',num2str(''))
set(handles.textEsperanza2,'String',num2str(''))
set(handles.textVarianza2,'String',num2str(''))
set(handles.textEsperanza3,'String',num2str(''))
set(handles.textVarianza3,'String',num2str(''))
elemento=0;
elemento2=0;
elemento3=0;
axes(handles.axes1)
if lambda>0
    i=1;
    while poisscdf(elemento,lambda)<0.99999
        x(i)=elemento;
        y(i)=poisspdf(elemento,lambda);
        i=i+1;
        elemento=elemento+1;
    end
    stem(x,y,'--b')
    set(handles.textEsperanza,'String',num2str(lambda))
    set(handles.textVarianza,'String',num2str(lambda))
    hold on
end
if lambda2>0
    i=1;
    while poisscdf(elemento2,lambda2)<0.99999
        x2(i)=elemento2;
        y2(i)=poisspdf(elemento2,lambda2);
        i=i+1;
        elemento2=elemento2+1;
    end
    stem(x2,y2,'--g')
    set(handles.textEsperanza2,'String',num2str(lambda2))
    set(handles.textVarianza2,'String',num2str(lambda2))
    hold on
end
if lambda3>0
    i=1;
    while poisscdf(elemento3,lambda3)<0.99999
        x3(i)=elemento3;
        y3(i)=poisspdf(elemento3,lambda3);
        i=i+1;
        elemento3=elemento3+1;
    end
    stem(x3,y3,'--r')
    set(handles.textEsperanza3,'String',num2str(lambda3))
    set(handles.textVarianza3,'String',num2str(lambda3))
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
lambda=str2double(get(handles.textLambda,'string'));
if z>=0&&lambda>0
    probabilidad=poisspdf(z,lambda);
    set(handles.prZ,'String',num2str(probabilidad))
    probabilidad2=poisscdf(z,lambda);
    set(handles.prZA,'String',num2str(probabilidad2))
end




% --- Executes on button press in botonAcumulado.
function botonAcumulado_Callback(hObject, eventdata, handles)
% hObject    handle to botonAcumulado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
lambda=str2double(get(handles.textLambda,'string'));
lambda2=str2double(get(handles.textLambda2,'string'));
lambda3=str2double(get(handles.textLambda3,'string'));
set(handles.textEsperanza,'String',num2str(''))
set(handles.textVarianza,'String',num2str(''))
set(handles.textEsperanza2,'String',num2str(''))
set(handles.textVarianza2,'String',num2str(''))
set(handles.textEsperanza3,'String',num2str(''))
set(handles.textVarianza3,'String',num2str(''))
elemento=0;
elemento2=0;
elemento3=0;
axes(handles.axes1)
if lambda>0
    i=1;
    while poisscdf(elemento,lambda)<0.99999
        x(i)=elemento;
        y(i)=poisscdf(elemento,lambda);
        i=i+1;
        elemento=elemento+1;
    end
    stem(x,y,'--b')
    set(handles.textEsperanza,'String',num2str(lambda))
    set(handles.textVarianza,'String',num2str(lambda))
    hold on
end
if lambda2>0
    i=1;
    while poisscdf(elemento2,lambda2)<0.99999
        x2(i)=elemento2;
        y2(i)=poisscdf(elemento2,lambda2);
        i=i+1;
        elemento2=elemento2+1;
    end
    stem(x2,y2,'--g')
    set(handles.textEsperanza2,'String',num2str(lambda2))
    set(handles.textVarianza2,'String',num2str(lambda2))
    hold on
end
if lambda3>0
    i=1;
    while poisscdf(elemento3,lambda3)<0.99999
        x3(i)=elemento3;
        y3(i)=poisscdf(elemento3,lambda3);
        i=i+1;
        elemento3=elemento3+1;
    end
    stem(x3,y3,'--r')
    set(handles.textEsperanza3,'String',num2str(lambda3))
    set(handles.textVarianza3,'String',num2str(lambda3))
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
lambda2=str2double(get(handles.textLambda2,'string'));
if z2>=0&&lambda2>0
    probabilidad=poisspdf(z2,lambda2);
    set(handles.prZ2,'String',num2str(probabilidad))
    probabilidad2=poisscdf(z2,lambda2);
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
lambda3=str2double(get(handles.textLambda3,'string'));
if z3>=0&&lambda3>0
    probabilidad=poisspdf(z3,lambda3);
    set(handles.prZ3,'String',num2str(probabilidad))
    probabilidad2=poisscdf(z3,lambda3);
    set(handles.prZA3,'String',num2str(probabilidad2))
end




function textLambda_Callback(hObject, eventdata, handles)
% hObject    handle to textLambda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textLambda as text
%        str2double(get(hObject,'String')) returns contents of textLambda as a double


% --- Executes during object creation, after setting all properties.
function textLambda_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textLambda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textLambda3_Callback(hObject, eventdata, handles)
% hObject    handle to textLambda3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textLambda3 as text
%        str2double(get(hObject,'String')) returns contents of textLambda3 as a double


% --- Executes during object creation, after setting all properties.
function textLambda3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textLambda3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textLambda2_Callback(hObject, eventdata, handles)
% hObject    handle to textLambda2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textLambda2 as text
%        str2double(get(hObject,'String')) returns contents of textLambda2 as a double


% --- Executes during object creation, after setting all properties.
function textLambda2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textLambda2 (see GCBO)
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
