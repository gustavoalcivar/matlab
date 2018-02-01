function varargout = DistribucionWeibull(varargin)
% DISTRIBUCIONWEIBULL M-file for DistribucionWeibull.fig
%      DISTRIBUCIONWEIBULL, by itself, creates a new DISTRIBUCIONWEIBULL or raises the existing
%      singleton*.
%
%      H = DISTRIBUCIONWEIBULL returns the handle to a new DISTRIBUCIONWEIBULL or the handle to
%      the existing singleton*.
%
%      DISTRIBUCIONWEIBULL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DISTRIBUCIONWEIBULL.M with the given input arguments.
%
%      DISTRIBUCIONWEIBULL('Property','Value',...) creates a new DISTRIBUCIONWEIBULL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DistribucionWeibull_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DistribucionWeibull_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DistribucionWeibull

% Last Modified by GUIDE v2.5 27-Jul-2012 16:00:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DistribucionWeibull_OpeningFcn, ...
                   'gui_OutputFcn',  @DistribucionWeibull_OutputFcn, ...
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


% --- Executes just before DistribucionWeibull is made visible.
function DistribucionWeibull_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DistribucionWeibull (see VARARGIN)

% Choose default command line output for DistribucionWeibull
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DistribucionWeibull wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DistribucionWeibull_OutputFcn(hObject, eventdata, handles) 
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
delta=str2double(get(handles.textDelta,'string'));
delta2=str2double(get(handles.textDelta2,'string'));
delta3=str2double(get(handles.textDelta3,'string'));
beta=str2double(get(handles.textBeta,'string'));
beta2=str2double(get(handles.textBeta2,'string'));
beta3=str2double(get(handles.textBeta3,'string'));
set(handles.textEsperanza,'String',num2str(''))
set(handles.textVarianza,'String',num2str(''))
set(handles.textEsperanza2,'String',num2str(''))
set(handles.textVarianza2,'String',num2str(''))
set(handles.textEsperanza3,'String',num2str(''))
set(handles.textVarianza3,'String',num2str(''))
variacion=0.001;
elemento=0;
elemento2=0;
elemento3=0;
axes(handles.axes1)
if delta>0&&beta>0
    i=1;
    while wblcdf(elemento,delta,beta)<0.9999
        x(i)=elemento;
        y(i)=wblpdf(elemento,delta,beta);
        i=i+1;
        elemento=elemento+variacion;
    end
    plot(x,y,'b')
    set(handles.textEsperanza,'String',num2str(delta*gamma(1+1/beta)))
    set(handles.textVarianza,'String',num2str(delta^2*gamma(1+2/beta)-delta^2*(gamma(1+1/beta))^2))
    hold on
end
if delta2>0&&beta2>0
    i=1;
    while wblcdf(elemento2,delta2,beta2)<0.9999
        x2(i)=elemento2;
        y2(i)=wblpdf(elemento2,delta2,beta2);
        i=i+1;
        elemento2=elemento2+variacion;
    end
    plot(x2,y2,'g')
    set(handles.textEsperanza2,'String',num2str(delta2*gamma(1+1/beta2)))
    set(handles.textVarianza2,'String',num2str(delta2^2*gamma(1+2/beta2)-delta2^2*(gamma(1+1/beta2))^2))
    hold on
end
if delta3>0&&beta3>0
    i=1;
    while wblcdf(elemento3,delta3,beta3)<0.9999
        x3(i)=elemento3;
        y3(i)=wblpdf(elemento3,delta3,beta3);
        i=i+1;
        elemento3=elemento3+variacion;
    end
    plot(x3,y3,'r')
    set(handles.textEsperanza3,'String',num2str(delta3*gamma(1+1/beta3)))
    set(handles.textVarianza3,'String',num2str(delta3^2*gamma(1+2/beta3)-delta3^2*(gamma(1+1/beta3))^2))
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
delta=str2double(get(handles.textDelta,'string'));
beta=str2double(get(handles.textBeta,'string'));
if z>=0&&delta>0&&beta>0
    probabilidad=wblcdf(z,delta,beta);
    set(handles.prZ,'String',num2str(probabilidad))
end


% --- Executes on button press in botonAcumulada.
function botonAcumulada_Callback(hObject, eventdata, handles)
% hObject    handle to botonAcumulada (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delta=str2double(get(handles.textDelta,'string'));
delta2=str2double(get(handles.textDelta2,'string'));
delta3=str2double(get(handles.textDelta3,'string'));
beta=str2double(get(handles.textBeta,'string'));
beta2=str2double(get(handles.textBeta2,'string'));
beta3=str2double(get(handles.textBeta3,'string'));
set(handles.textEsperanza,'String',num2str(''))
set(handles.textVarianza,'String',num2str(''))
set(handles.textEsperanza2,'String',num2str(''))
set(handles.textVarianza2,'String',num2str(''))
set(handles.textEsperanza3,'String',num2str(''))
set(handles.textVarianza3,'String',num2str(''))
variacion=0.001;
elemento=0;
elemento2=0;
elemento3=0;
axes(handles.axes1)
if delta>0&&beta>0
    i=1;
    while wblcdf(elemento,delta,beta)<0.9999
        x(i)=elemento;
        y(i)=wblcdf(elemento,delta,beta);
        i=i+1;
        elemento=elemento+variacion;
    end
    plot(x,y,'b')
    set(handles.textEsperanza,'String',num2str(delta*gamma(1+1/beta)))
    set(handles.textVarianza,'String',num2str(delta^2*gamma(1+2/beta)-delta^2*(gamma(1+1/beta))^2))
    hold on
end
if delta2>0&&beta2>0
    i=1;
    while wblcdf(elemento2,delta2,beta2)<0.9999
        x2(i)=elemento2;
        y2(i)=wblcdf(elemento2,delta2,beta2);
        i=i+1;
        elemento2=elemento2+variacion;
    end
    plot(x2,y2,'g')
    set(handles.textEsperanza2,'String',num2str(delta2*gamma(1+1/beta2)))
    set(handles.textVarianza2,'String',num2str(delta2^2*gamma(1+2/beta2)-delta2^2*(gamma(1+1/beta2))^2))
    hold on
end
if delta3>0&&beta3>0
    i=1;
    while wblcdf(elemento3,delta3,beta3)<0.9999
        x3(i)=elemento3;
        y3(i)=wblcdf(elemento3,delta3,beta3);
        i=i+1;
        elemento3=elemento3+variacion;
    end
    plot(x3,y3,'r')
    set(handles.textEsperanza3,'String',num2str(delta3*gamma(1+1/beta3)))
    set(handles.textVarianza3,'String',num2str(delta3^2*gamma(1+2/beta3)-delta3^2*(gamma(1+1/beta3))^2))
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
delta2=str2double(get(handles.textDelta2,'string'));
beta2=str2double(get(handles.textBeta2,'string'));
if z2>=0&&delta2>0&&beta2>0
    probabilidad=wblcdf(z2,delta2,beta2);
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
delta3=str2double(get(handles.textDelta3,'string'));
beta3=str2double(get(handles.textBeta3,'string'));
if z3>=0&&delta3>0&&beta3>0
    probabilidad=wblcdf(z3,delta3,beta3);
    set(handles.prZ3,'String',num2str(probabilidad))
end



function textDelta_Callback(hObject, eventdata, handles)
% hObject    handle to textDelta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textDelta as text
%        str2double(get(hObject,'String')) returns contents of textDelta as a double


% --- Executes during object creation, after setting all properties.
function textDelta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textDelta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textDelta3_Callback(hObject, eventdata, handles)
% hObject    handle to textDelta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textDelta3 as text
%        str2double(get(hObject,'String')) returns contents of textDelta3 as a double


% --- Executes during object creation, after setting all properties.
function textDelta3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textDelta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textDelta2_Callback(hObject, eventdata, handles)
% hObject    handle to textDelta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textDelta2 as text
%        str2double(get(hObject,'String')) returns contents of textDelta2 as a double


% --- Executes during object creation, after setting all properties.
function textDelta2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textDelta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textBeta_Callback(hObject, eventdata, handles)
% hObject    handle to textBeta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textBeta as text
%        str2double(get(hObject,'String')) returns contents of textBeta as a double


% --- Executes during object creation, after setting all properties.
function textBeta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textBeta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textBeta3_Callback(hObject, eventdata, handles)
% hObject    handle to textBeta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textBeta3 as text
%        str2double(get(hObject,'String')) returns contents of textBeta3 as a double


% --- Executes during object creation, after setting all properties.
function textBeta3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textBeta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textBeta2_Callback(hObject, eventdata, handles)
% hObject    handle to textBeta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textBeta2 as text
%        str2double(get(hObject,'String')) returns contents of textBeta2 as a double


% --- Executes during object creation, after setting all properties.
function textBeta2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textBeta2 (see GCBO)
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
