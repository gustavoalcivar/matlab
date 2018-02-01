function varargout = DistribucionNormal(varargin)
% DISTRIBUCIONNORMAL M-file for DistribucionNormal.fig
%      DISTRIBUCIONNORMAL, by itself, creates a new DISTRIBUCIONNORMAL or raises the existing
%      singleton*.
%
%      H = DISTRIBUCIONNORMAL returns the handle to a new DISTRIBUCIONNORMAL or the handle to
%      the existing singleton*.
%
%      DISTRIBUCIONNORMAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DISTRIBUCIONNORMAL.M with the given input arguments.
%
%      DISTRIBUCIONNORMAL('Property','Value',...) creates a new DISTRIBUCIONNORMAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DistribucionNormal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DistribucionNormal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DistribucionNormal

% Last Modified by GUIDE v2.5 27-Jul-2012 15:58:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DistribucionNormal_OpeningFcn, ...
                   'gui_OutputFcn',  @DistribucionNormal_OutputFcn, ...
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


% --- Executes just before DistribucionNormal is made visible.
function DistribucionNormal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DistribucionNormal (see VARARGIN)

% Choose default command line output for DistribucionNormal
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DistribucionNormal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DistribucionNormal_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function textMedia_Callback(hObject, eventdata, handles)
% hObject    handle to textMedia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textMedia as text
%        str2double(get(hObject,'String')) returns contents of textMedia as a double


% --- Executes during object creation, after setting all properties.
function textMedia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textMedia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textDesviacion_Callback(hObject, eventdata, handles)
% hObject    handle to textDesviacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textDesviacion as text
%        str2double(get(hObject,'String')) returns contents of textDesviacion as a double


% --- Executes during object creation, after setting all properties.
function textDesviacion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textDesviacion (see GCBO)
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
media=str2double(get(handles.textMedia,'string'));
media2=str2double(get(handles.textMedia2,'string'));
media3=str2double(get(handles.textMedia3,'string'));
desviacion=str2double(get(handles.textDesviacion,'string'));
desviacion2=str2double(get(handles.textDesviacion2,'string'));
desviacion3=str2double(get(handles.textDesviacion3,'string'));
set(handles.textEsperanza,'String',num2str(''))
set(handles.textVarianza,'String',num2str(''))
set(handles.textEsperanza2,'String',num2str(''))
set(handles.textVarianza2,'String',num2str(''))
set(handles.textEsperanza3,'String',num2str(''))
set(handles.textVarianza3,'String',num2str(''))
variacion=0.01;
elemento=media-4*desviacion;
elemento2=media2-4*desviacion2;
elemento3=media3-4*desviacion3;
axes(handles.axes1)
if desviacion>0&&media>-9999999999
    i=1;
    while elemento<media+4*desviacion
        x(i)=elemento;
        y(i)= normpdf(elemento,media,desviacion);
        i=i+1;
        elemento=elemento+variacion;
    end
    plot(x,y,'b')
    set(handles.textEsperanza,'String',num2str(media))
    set(handles.textVarianza,'String',num2str(desviacion^2))
    hold on
end
if desviacion2>0&&media2>-9999999999
    i=1;
    while elemento2<media2+4*desviacion2
        x2(i)=elemento2;
        y2(i)=normpdf(elemento2,media2,desviacion2);
        i=i+1;
        elemento2=elemento2+variacion;
    end
    plot(x2,y2,'g')
    set(handles.textEsperanza2,'String',num2str(media2))
    set(handles.textVarianza2,'String',num2str(desviacion2^2))
    hold on
end
if desviacion3>0&&media3>-9999999999
    i=1;
    while elemento3<media3+4*desviacion3
        x3(i)=elemento3;
        y3(i)=normpdf(elemento3,media3,desviacion3);
        i=i+1;
        elemento3=elemento3+variacion;
    end
    plot(x3,y3,'r')
    set(handles.textEsperanza3,'String',num2str(media3))
    set(handles.textVarianza3,'String',num2str(desviacion3^2))
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
media=str2double(get(handles.textMedia,'string'));
desviacion=str2double(get(handles.textDesviacion,'string'));
if z>=-999999999&&z<999999999&&desviacion>0&&media>-9999999999&&z>-9999999999
    probabilidad=normcdf(z,media,desviacion);
    set(handles.prZ,'String',num2str(probabilidad))
end


function textMedia3_Callback(hObject, eventdata, handles)
% hObject    handle to textMedia3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textMedia3 as text
%        str2double(get(hObject,'String')) returns contents of textMedia3 as a double


% --- Executes during object creation, after setting all properties.
function textMedia3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textMedia3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textDesviacion3_Callback(hObject, eventdata, handles)
% hObject    handle to textDesviacion3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textDesviacion3 as text
%        str2double(get(hObject,'String')) returns contents of textDesviacion3 as a double


% --- Executes during object creation, after setting all properties.
function textDesviacion3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textDesviacion3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textMedia2_Callback(hObject, eventdata, handles)
% hObject    handle to textMedia2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textMedia2 as text
%        str2double(get(hObject,'String')) returns contents of textMedia2 as a double


% --- Executes during object creation, after setting all properties.
function textMedia2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textMedia2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textDesviacion2_Callback(hObject, eventdata, handles)
% hObject    handle to textDesviacion2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textDesviacion2 as text
%        str2double(get(hObject,'String')) returns contents of textDesviacion2 as a double


% --- Executes during object creation, after setting all properties.
function textDesviacion2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textDesviacion2 (see GCBO)
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
media=str2double(get(handles.textMedia,'string'));
media2=str2double(get(handles.textMedia2,'string'));
media3=str2double(get(handles.textMedia3,'string'));
desviacion=str2double(get(handles.textDesviacion,'string'));
desviacion2=str2double(get(handles.textDesviacion2,'string'));
desviacion3=str2double(get(handles.textDesviacion3,'string'));
set(handles.textEsperanza,'String',num2str(''))
set(handles.textVarianza,'String',num2str(''))
set(handles.textEsperanza2,'String',num2str(''))
set(handles.textVarianza2,'String',num2str(''))
set(handles.textEsperanza3,'String',num2str(''))
set(handles.textVarianza3,'String',num2str(''))
variacion=0.01;
elemento=media-4*desviacion;
elemento2=media2-4*desviacion2;
elemento3=media3-4*desviacion3;
axes(handles.axes1)
if desviacion>0&&media>-9999999999
    i=1;
    while elemento<media+4*desviacion
        x(i)=elemento;
        y(i)=normcdf(elemento,media,desviacion);
        i=i+1;
        elemento=elemento+variacion;
    end
    plot(x,y,'b')
    set(handles.textEsperanza,'String',num2str(media))
    set(handles.textVarianza,'String',num2str(desviacion^2))
    hold on
end
if desviacion2>0&&media2>-9999999999
    i=1;
    while elemento2<media2+4*desviacion2
        x2(i)=elemento2;
        y2(i)=normcdf(elemento2,media2,desviacion2);
        i=i+1;
        elemento2=elemento2+variacion;
    end
    plot(x2,y2,'g')
    set(handles.textEsperanza2,'String',num2str(media2))
    set(handles.textVarianza2,'String',num2str(desviacion2^2))
    hold on
end
if desviacion3>0&&media3>-9999999999
    i=1;
    while elemento3<media3+4*desviacion3
        x3(i)=elemento3;
        y3(i)=normcdf(elemento3,media3,desviacion3);
        i=i+1;
        elemento3=elemento3+variacion;
    end
    plot(x3,y3,'r')
    set(handles.textEsperanza3,'String',num2str(media3))
    set(handles.textVarianza3,'String',num2str(desviacion3^2))
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
media2=str2double(get(handles.textMedia2,'string'));
desviacion2=str2double(get(handles.textDesviacion2,'string'));
if z2>=-999999999&&z2<999999999&&desviacion2>0&&media2>-9999999999&&z2>-9999999999
    probabilidad=normcdf(z2,media2,desviacion2);
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
media3=str2double(get(handles.textMedia3,'string'));
desviacion3=str2double(get(handles.textDesviacion3,'string'));
if z3>=-999999999&&z3<999999999&&desviacion3>0&&media3>-9999999999&&z3>-9999999999
    probabilidad=normcdf(z3,media3,desviacion3);
    set(handles.prZ3,'String',num2str(probabilidad))
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
Menu
