function varargout = DistribucionJiCuadrado(varargin)
% DISTRIBUCIONJICUADRADO M-file for DistribucionJiCuadrado.fig
%      DISTRIBUCIONJICUADRADO, by itself, creates a new DISTRIBUCIONJICUADRADO or raises the existing
%      singleton*.
%
%      H = DISTRIBUCIONJICUADRADO returns the handle to a new DISTRIBUCIONJICUADRADO or the handle to
%      the existing singleton*.
%
%      DISTRIBUCIONJICUADRADO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DISTRIBUCIONJICUADRADO.M with the given input arguments.
%
%      DISTRIBUCIONJICUADRADO('Property','Value',...) creates a new DISTRIBUCIONJICUADRADO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DistribucionJiCuadrado_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DistribucionJiCuadrado_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DistribucionJiCuadrado

% Last Modified by GUIDE v2.5 27-Jul-2012 15:58:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DistribucionJiCuadrado_OpeningFcn, ...
                   'gui_OutputFcn',  @DistribucionJiCuadrado_OutputFcn, ...
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


% --- Executes just before DistribucionJiCuadrado is made visible.
function DistribucionJiCuadrado_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DistribucionJiCuadrado (see VARARGIN)

% Choose default command line output for DistribucionJiCuadrado
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DistribucionJiCuadrado wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DistribucionJiCuadrado_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in botonOK.
function botonOK_Callback(hObject, eventdata, handles)
% hObject    handle to botonOK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r=str2double(get(handles.textR,'string'));
r2=str2double(get(handles.textR2,'string'));
r3=str2double(get(handles.textR3,'string'));
set(handles.textEsperanza,'String',num2str(''))
set(handles.textVarianza,'String',num2str(''))
set(handles.textEsperanza2,'String',num2str(''))
set(handles.textVarianza2,'String',num2str(''))
set(handles.textEsperanza3,'String',num2str(''))
set(handles.textVarianza3,'String',num2str(''))
variacion=0.01;
elemento=0;
elemento2=0;
elemento3=0;
axes(handles.axes1)
if r>0
    i=1;
    while chi2cdf(elemento,r)<0.999
        x(i)=elemento;
        y(i)= chi2pdf(elemento,r);
        i=i+1;
        elemento=elemento+variacion;
    end
    plot(x,y,'b')
    set(handles.textEsperanza,'String',num2str(r))
    set(handles.textVarianza,'String',num2str(2*r))
    hold on
end
if r2>0
    i=1;
    while chi2cdf(elemento2,r2)<0.999
        x2(i)=elemento2;
        y2(i)= chi2pdf(elemento2,r2);
        i=i+1;
        elemento2=elemento2+variacion;
    end
    plot(x2,y2,'g')
    set(handles.textEsperanza2,'String',num2str(r2))
    set(handles.textVarianza2,'String',num2str(2*r2))
    hold on
end
if r3>0
    i=1;
    while chi2cdf(elemento3,r3)<0.999
        x3(i)=elemento3;
        y3(i)= chi2pdf(elemento3,r3);
        i=i+1;
        elemento3=elemento3+variacion;
    end
    plot(x3,y3,'r')
    set(handles.textEsperanza3,'String',num2str(r3))
    set(handles.textVarianza3,'String',num2str(2*r3))
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
r=str2double(get(handles.textR,'string'));
if z>=0&&r>0
    probabilidad=chi2cdf(z,r);
    set(handles.prZ,'String',num2str(probabilidad))
end


function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in botonAcumulada.
function botonAcumulada_Callback(hObject, eventdata, handles)
% hObject    handle to botonAcumulada (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r=str2double(get(handles.textR,'string'));
r2=str2double(get(handles.textR2,'string'));
r3=str2double(get(handles.textR3,'string'));
set(handles.textEsperanza,'String',num2str(''))
set(handles.textVarianza,'String',num2str(''))
set(handles.textEsperanza2,'String',num2str(''))
set(handles.textVarianza2,'String',num2str(''))
set(handles.textEsperanza3,'String',num2str(''))
set(handles.textVarianza3,'String',num2str(''))
variacion=0.01;
elemento=0;
elemento2=0;
elemento3=0;
axes(handles.axes1)
if r>0
    i=1;
    while chi2cdf(elemento,r)<0.999
        x(i)=elemento;
        y(i)= chi2cdf(elemento,r);
        i=i+1;
        elemento=elemento+variacion;
    end
    plot(x,y,'b')
    set(handles.textEsperanza,'String',num2str(r))
    set(handles.textVarianza,'String',num2str(2*r))
    hold on
end
if r2>0
    i=1;
    while chi2cdf(elemento2,r2)<0.999
        x2(i)=elemento2;
        y2(i)= chi2cdf(elemento2,r2);
        i=i+1;
        elemento2=elemento2+variacion;
    end
    plot(x2,y2,'g')
    set(handles.textEsperanza2,'String',num2str(r2))
    set(handles.textVarianza2,'String',num2str(2*r2))
    hold on
end
if r3>0
    i=1;
    while chi2cdf(elemento3,r3)<0.999
        x3(i)=elemento3;
        y3(i)= chi2cdf(elemento3,r3);
        i=i+1;
        elemento3=elemento3+variacion;
    end
    plot(x3,y3,'r')
    set(handles.textEsperanza3,'String',num2str(r3))
    set(handles.textVarianza3,'String',num2str(2*r3))
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
r2=str2double(get(handles.textR2,'string'));
if z2>=0&&r2>0
    probabilidad=chi2cdf(z2,r2);
    set(handles.prZ2,'String',num2str(probabilidad))
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
r3=str2double(get(handles.textR3,'string'));
if z3>=0&&r3>0
    probabilidad=chi2cdf(z3,r3);
    set(handles.prZ3,'String',num2str(probabilidad))
end



function textR_Callback(hObject, eventdata, handles)
% hObject    handle to textR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textR as text
%        str2double(get(hObject,'String')) returns contents of textR as a double


% --- Executes during object creation, after setting all properties.
function textR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textR3_Callback(hObject, eventdata, handles)
% hObject    handle to textR3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textR3 as text
%        str2double(get(hObject,'String')) returns contents of textR3 as a double


% --- Executes during object creation, after setting all properties.
function textR3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textR3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textR2_Callback(hObject, eventdata, handles)
% hObject    handle to textR2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textR2 as text
%        str2double(get(hObject,'String')) returns contents of textR2 as a double


% --- Executes during object creation, after setting all properties.
function textR2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textR2 (see GCBO)
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
