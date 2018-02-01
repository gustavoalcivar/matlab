function varargout = DistribucionGeometrica(varargin)
% DISTRIBUCIONGEOMETRICA M-file for DistribucionGeometrica.fig
%      DISTRIBUCIONGEOMETRICA, by itself, creates a new DISTRIBUCIONGEOMETRICA or raises the existing
%      singleton*.
%
%      H = DISTRIBUCIONGEOMETRICA returns the handle to a new DISTRIBUCIONGEOMETRICA or the handle to
%      the existing singleton*.
%
%      DISTRIBUCIONGEOMETRICA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DISTRIBUCIONGEOMETRICA.M with the given input arguments.
%
%      DISTRIBUCIONGEOMETRICA('Property','Value',...) creates a new DISTRIBUCIONGEOMETRICA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DistribucionGeometrica_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DistribucionGeometrica_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DistribucionGeometrica

% Last Modified by GUIDE v2.5 27-Jul-2012 15:55:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DistribucionGeometrica_OpeningFcn, ...
                   'gui_OutputFcn',  @DistribucionGeometrica_OutputFcn, ...
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


% --- Executes just before DistribucionGeometrica is made visible.
function DistribucionGeometrica_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DistribucionGeometrica (see VARARGIN)

% Choose default command line output for DistribucionGeometrica
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DistribucionGeometrica wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DistribucionGeometrica_OutputFcn(hObject, eventdata, handles) 
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
p=str2double(get(handles.textP,'string'));
p2=str2double(get(handles.textP2,'string'));
p3=str2double(get(handles.textP3,'string'));
set(handles.textEsperanza,'String',num2str(''))
set(handles.textVarianza,'String',num2str(''))
set(handles.textEsperanza2,'String',num2str(''))
set(handles.textVarianza2,'String',num2str(''))
set(handles.textEsperanza3,'String',num2str(''))
set(handles.textVarianza3,'String',num2str(''))
elemento=1;
elemento2=1;
elemento3=1;
axes(handles.axes1)
if p>=0&&p<=1
    i=1;
    while geocdf(elemento,p)<0.999
        x(i)=elemento;
        y(i)=geopdf(elemento,p);
        i=i+1;
        elemento=elemento+1;
    end
    stem(x,y,'--b')
    set(handles.textEsperanza,'String',num2str(1/p))
    set(handles.textVarianza,'String',num2str((1-p)/(p^2)))
    hold on
end
if p2>=0&&p2<=1
    i=1;
    while geocdf(elemento2,p2)<0.999
        x2(i)=elemento2;
        y2(i)=geopdf(elemento2,p2);
        i=i+1;
        elemento2=elemento2+1;
    end
    stem(x2,y2,'--g')
    set(handles.textEsperanza2,'String',num2str(1/p2))
    set(handles.textVarianza2,'String',num2str((1-p2)/(p2^2)))
    hold on
end
if p3>=0&&p3<=1
    i=1;
    while geocdf(elemento3,p3)<0.999
        x3(i)=elemento3;
        y3(i)=geopdf(elemento3,p3);
        i=i+1;
        elemento3=elemento3+1;
    end
    stem(x3,y3,'--r')
    set(handles.textEsperanza3,'String',num2str(1/p3))
    set(handles.textVarianza3,'String',num2str((1-p3)/(p3^2)))
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
p=str2double(get(handles.textP,'string'));
if z>=1&&p>=0&&p<=1
    probabilidad=geopdf(z,p);
    set(handles.prZ,'String',num2str(probabilidad))
    probabilidad2=geocdf(z,p);
    set(handles.prZA,'String',num2str(probabilidad2))
end


% --- Executes on button press in botonAcumilado.
function botonAcumilado_Callback(hObject, eventdata, handles)
% hObject    handle to botonAcumilado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
p=str2double(get(handles.textP,'string'));
p2=str2double(get(handles.textP2,'string'));
p3=str2double(get(handles.textP3,'string'));
set(handles.textEsperanza,'String',num2str(''))
set(handles.textVarianza,'String',num2str(''))
set(handles.textEsperanza2,'String',num2str(''))
set(handles.textVarianza2,'String',num2str(''))
set(handles.textEsperanza3,'String',num2str(''))
set(handles.textVarianza3,'String',num2str(''))
elemento=1;
elemento2=1;
elemento3=1;
axes(handles.axes1)
if p>=0&&p<=1
    i=1;
    while geocdf(elemento,p)<0.999
        x(i)=elemento;
        y(i)=geocdf(elemento,p);
        i=i+1;
        elemento=elemento+1;
    end
    stem(x,y,'--b')
    set(handles.textEsperanza,'String',num2str(1/p))
    set(handles.textVarianza,'String',num2str((1-p)/(p^2)))
    hold on
end
if p2>=0&&p2<=1
    i=1;
    while geocdf(elemento2,p2)<0.999
        x2(i)=elemento2;
        y2(i)=geocdf(elemento2,p2);
        i=i+1;
        elemento2=elemento2+1;
    end
    stem(x2,y2,'--g')
    set(handles.textEsperanza2,'String',num2str(1/p2))
    set(handles.textVarianza2,'String',num2str((1-p2)/(p2^2)))
    hold on
end
if p3>=0&&p3<=1
    i=1;
    while geocdf(elemento3,p3)<0.999
        x3(i)=elemento3;
        y3(i)=geocdf(elemento3,p3);
        i=i+1;
        elemento3=elemento3+1;
    end
    stem(x3,y3,'--r')
    set(handles.textEsperanza3,'String',num2str(1/p3))
    set(handles.textVarianza3,'String',num2str((1-p3)/(p3^2)))
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
p2=str2double(get(handles.textP2,'string'));
if z2>=1&&p2>=0&&p2<=1
    probabilidad=geopdf(z2,p2);
    set(handles.prZ2,'String',num2str(probabilidad))
    probabilidad2=geocdf(z2,p2);
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
p3=str2double(get(handles.textP3,'string'));
if z3>=1&&p3>=0&&p3<=1
    probabilidad=geopdf(z3,p3);
    set(handles.prZ3,'String',num2str(probabilidad))
    probabilidad2=geocdf(z3,p3);
    set(handles.prZA3,'String',num2str(probabilidad2))
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



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textP_Callback(hObject, eventdata, handles)
% hObject    handle to textP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textP as text
%        str2double(get(hObject,'String')) returns contents of textP as a double


% --- Executes during object creation, after setting all properties.
function textP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textP3_Callback(hObject, eventdata, handles)
% hObject    handle to textP3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textP3 as text
%        str2double(get(hObject,'String')) returns contents of textP3 as a double


% --- Executes during object creation, after setting all properties.
function textP3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textP3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textP2_Callback(hObject, eventdata, handles)
% hObject    handle to textP2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textP2 as text
%        str2double(get(hObject,'String')) returns contents of textP2 as a double


% --- Executes during object creation, after setting all properties.
function textP2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textP2 (see GCBO)
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
