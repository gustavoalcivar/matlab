function varargout = asignacion(varargin)
% ASIGNACION M-file for asignacion.fig
%      ASIGNACION, by itself, creates a new ASIGNACION or raises the existing
%      singleton*.
%
%      H = ASIGNACION returns the handle to a new ASIGNACION or the handle to
%      the existing singleton*.
%
%      ASIGNACION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ASIGNACION.M with the given input arguments.
%
%      ASIGNACION('Property','Value',...) creates a new ASIGNACION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before asignacion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to asignacion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help asignacion

% Last Modified by GUIDE v2.5 18-Jan-2014 13:45:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @asignacion_OpeningFcn, ...
                   'gui_OutputFcn',  @asignacion_OutputFcn, ...
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


% --- Executes just before asignacion is made visible.
function asignacion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to asignacion (see VARARGIN)

% Choose default command line output for asignacion
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes asignacion wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = asignacion_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtColumnas_Callback(hObject, eventdata, handles)
% hObject    handle to txtColumnas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtColumnas as text
%        str2double(get(hObject,'String')) returns contents of txtColumnas as a double


% --- Executes during object creation, after setting all properties.
function txtColumnas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtColumnas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtFilas_Callback(hObject, eventdata, handles)
% hObject    handle to txtFilas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtFilas as text
%        str2double(get(hObject,'String')) returns contents of txtFilas as a double


% --- Executes during object creation, after setting all properties.
function txtFilas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtFilas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt11_Callback(hObject, eventdata, handles)
% hObject    handle to txt11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt11 as text
%        str2double(get(hObject,'String')) returns contents of txt11 as a double


% --- Executes during object creation, after setting all properties.
function txt11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt12_Callback(hObject, eventdata, handles)
% hObject    handle to txt12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt12 as text
%        str2double(get(hObject,'String')) returns contents of txt12 as a double


% --- Executes during object creation, after setting all properties.
function txt12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt13_Callback(hObject, eventdata, handles)
% hObject    handle to txt13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt13 as text
%        str2double(get(hObject,'String')) returns contents of txt13 as a double


% --- Executes during object creation, after setting all properties.
function txt13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt14_Callback(hObject, eventdata, handles)
% hObject    handle to txt14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt14 as text
%        str2double(get(hObject,'String')) returns contents of txt14 as a double


% --- Executes during object creation, after setting all properties.
function txt14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt15_Callback(hObject, eventdata, handles)
% hObject    handle to txt15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt15 as text
%        str2double(get(hObject,'String')) returns contents of txt15 as a double


% --- Executes during object creation, after setting all properties.
function txt15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt16_Callback(hObject, eventdata, handles)
% hObject    handle to txt16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt16 as text
%        str2double(get(hObject,'String')) returns contents of txt16 as a double


% --- Executes during object creation, after setting all properties.
function txt16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt17_Callback(hObject, eventdata, handles)
% hObject    handle to txt17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt17 as text
%        str2double(get(hObject,'String')) returns contents of txt17 as a double


% --- Executes during object creation, after setting all properties.
function txt17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt18_Callback(hObject, eventdata, handles)
% hObject    handle to txt18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt18 as text
%        str2double(get(hObject,'String')) returns contents of txt18 as a double


% --- Executes during object creation, after setting all properties.
function txt18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt19_Callback(hObject, eventdata, handles)
% hObject    handle to txt19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt19 as text
%        str2double(get(hObject,'String')) returns contents of txt19 as a double


% --- Executes during object creation, after setting all properties.
function txt19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt110_Callback(hObject, eventdata, handles)
% hObject    handle to txt110 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt110 as text
%        str2double(get(hObject,'String')) returns contents of txt110 as a double


% --- Executes during object creation, after setting all properties.
function txt110_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt110 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt21_Callback(hObject, eventdata, handles)
% hObject    handle to txt21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt21 as text
%        str2double(get(hObject,'String')) returns contents of txt21 as a double


% --- Executes during object creation, after setting all properties.
function txt21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt22_Callback(hObject, eventdata, handles)
% hObject    handle to txt22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt22 as text
%        str2double(get(hObject,'String')) returns contents of txt22 as a double


% --- Executes during object creation, after setting all properties.
function txt22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt23_Callback(hObject, eventdata, handles)
% hObject    handle to txt23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt23 as text
%        str2double(get(hObject,'String')) returns contents of txt23 as a double


% --- Executes during object creation, after setting all properties.
function txt23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt24_Callback(hObject, eventdata, handles)
% hObject    handle to txt24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt24 as text
%        str2double(get(hObject,'String')) returns contents of txt24 as a double


% --- Executes during object creation, after setting all properties.
function txt24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt25_Callback(hObject, eventdata, handles)
% hObject    handle to txt25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt25 as text
%        str2double(get(hObject,'String')) returns contents of txt25 as a double


% --- Executes during object creation, after setting all properties.
function txt25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt26_Callback(hObject, eventdata, handles)
% hObject    handle to txt26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt26 as text
%        str2double(get(hObject,'String')) returns contents of txt26 as a double


% --- Executes during object creation, after setting all properties.
function txt26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt27_Callback(hObject, eventdata, handles)
% hObject    handle to txt27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt27 as text
%        str2double(get(hObject,'String')) returns contents of txt27 as a double


% --- Executes during object creation, after setting all properties.
function txt27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt28_Callback(hObject, eventdata, handles)
% hObject    handle to txt28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt28 as text
%        str2double(get(hObject,'String')) returns contents of txt28 as a double


% --- Executes during object creation, after setting all properties.
function txt28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt29_Callback(hObject, eventdata, handles)
% hObject    handle to txt29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt29 as text
%        str2double(get(hObject,'String')) returns contents of txt29 as a double


% --- Executes during object creation, after setting all properties.
function txt29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt210_Callback(hObject, eventdata, handles)
% hObject    handle to txt210 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt210 as text
%        str2double(get(hObject,'String')) returns contents of txt210 as a double


% --- Executes during object creation, after setting all properties.
function txt210_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt210 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt31_Callback(hObject, eventdata, handles)
% hObject    handle to txt31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt31 as text
%        str2double(get(hObject,'String')) returns contents of txt31 as a double


% --- Executes during object creation, after setting all properties.
function txt31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt32_Callback(hObject, eventdata, handles)
% hObject    handle to txt32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt32 as text
%        str2double(get(hObject,'String')) returns contents of txt32 as a double


% --- Executes during object creation, after setting all properties.
function txt32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt33_Callback(hObject, eventdata, handles)
% hObject    handle to txt33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt33 as text
%        str2double(get(hObject,'String')) returns contents of txt33 as a double


% --- Executes during object creation, after setting all properties.
function txt33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt34_Callback(hObject, eventdata, handles)
% hObject    handle to txt34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt34 as text
%        str2double(get(hObject,'String')) returns contents of txt34 as a double


% --- Executes during object creation, after setting all properties.
function txt34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt35_Callback(hObject, eventdata, handles)
% hObject    handle to txt35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt35 as text
%        str2double(get(hObject,'String')) returns contents of txt35 as a double


% --- Executes during object creation, after setting all properties.
function txt35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt36_Callback(hObject, eventdata, handles)
% hObject    handle to txt36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt36 as text
%        str2double(get(hObject,'String')) returns contents of txt36 as a double


% --- Executes during object creation, after setting all properties.
function txt36_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt37_Callback(hObject, eventdata, handles)
% hObject    handle to txt37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt37 as text
%        str2double(get(hObject,'String')) returns contents of txt37 as a double


% --- Executes during object creation, after setting all properties.
function txt37_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt38_Callback(hObject, eventdata, handles)
% hObject    handle to txt38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt38 as text
%        str2double(get(hObject,'String')) returns contents of txt38 as a double


% --- Executes during object creation, after setting all properties.
function txt38_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt39_Callback(hObject, eventdata, handles)
% hObject    handle to txt39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt39 as text
%        str2double(get(hObject,'String')) returns contents of txt39 as a double


% --- Executes during object creation, after setting all properties.
function txt39_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt310_Callback(hObject, eventdata, handles)
% hObject    handle to txt310 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt310 as text
%        str2double(get(hObject,'String')) returns contents of txt310 as a double


% --- Executes during object creation, after setting all properties.
function txt310_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt310 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt41_Callback(hObject, eventdata, handles)
% hObject    handle to txt41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt41 as text
%        str2double(get(hObject,'String')) returns contents of txt41 as a double


% --- Executes during object creation, after setting all properties.
function txt41_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt42_Callback(hObject, eventdata, handles)
% hObject    handle to txt42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt42 as text
%        str2double(get(hObject,'String')) returns contents of txt42 as a double


% --- Executes during object creation, after setting all properties.
function txt42_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt43_Callback(hObject, eventdata, handles)
% hObject    handle to txt43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt43 as text
%        str2double(get(hObject,'String')) returns contents of txt43 as a double


% --- Executes during object creation, after setting all properties.
function txt43_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt44_Callback(hObject, eventdata, handles)
% hObject    handle to txt44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt44 as text
%        str2double(get(hObject,'String')) returns contents of txt44 as a double


% --- Executes during object creation, after setting all properties.
function txt44_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt45_Callback(hObject, eventdata, handles)
% hObject    handle to txt45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt45 as text
%        str2double(get(hObject,'String')) returns contents of txt45 as a double


% --- Executes during object creation, after setting all properties.
function txt45_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt46_Callback(hObject, eventdata, handles)
% hObject    handle to txt46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt46 as text
%        str2double(get(hObject,'String')) returns contents of txt46 as a double


% --- Executes during object creation, after setting all properties.
function txt46_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt47_Callback(hObject, eventdata, handles)
% hObject    handle to txt47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt47 as text
%        str2double(get(hObject,'String')) returns contents of txt47 as a double


% --- Executes during object creation, after setting all properties.
function txt47_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt48_Callback(hObject, eventdata, handles)
% hObject    handle to txt48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt48 as text
%        str2double(get(hObject,'String')) returns contents of txt48 as a double


% --- Executes during object creation, after setting all properties.
function txt48_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt49_Callback(hObject, eventdata, handles)
% hObject    handle to txt49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt49 as text
%        str2double(get(hObject,'String')) returns contents of txt49 as a double


% --- Executes during object creation, after setting all properties.
function txt49_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt410_Callback(hObject, eventdata, handles)
% hObject    handle to txt410 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt410 as text
%        str2double(get(hObject,'String')) returns contents of txt410 as a double


% --- Executes during object creation, after setting all properties.
function txt410_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt410 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt51_Callback(hObject, eventdata, handles)
% hObject    handle to txt51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt51 as text
%        str2double(get(hObject,'String')) returns contents of txt51 as a double


% --- Executes during object creation, after setting all properties.
function txt51_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt52_Callback(hObject, eventdata, handles)
% hObject    handle to txt52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt52 as text
%        str2double(get(hObject,'String')) returns contents of txt52 as a double


% --- Executes during object creation, after setting all properties.
function txt52_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt53_Callback(hObject, eventdata, handles)
% hObject    handle to txt53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt53 as text
%        str2double(get(hObject,'String')) returns contents of txt53 as a double


% --- Executes during object creation, after setting all properties.
function txt53_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt54_Callback(hObject, eventdata, handles)
% hObject    handle to txt54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt54 as text
%        str2double(get(hObject,'String')) returns contents of txt54 as a double


% --- Executes during object creation, after setting all properties.
function txt54_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt55_Callback(hObject, eventdata, handles)
% hObject    handle to txt55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt55 as text
%        str2double(get(hObject,'String')) returns contents of txt55 as a double


% --- Executes during object creation, after setting all properties.
function txt55_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt56_Callback(hObject, eventdata, handles)
% hObject    handle to txt56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt56 as text
%        str2double(get(hObject,'String')) returns contents of txt56 as a double


% --- Executes during object creation, after setting all properties.
function txt56_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt57_Callback(hObject, eventdata, handles)
% hObject    handle to txt57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt57 as text
%        str2double(get(hObject,'String')) returns contents of txt57 as a double


% --- Executes during object creation, after setting all properties.
function txt57_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt58_Callback(hObject, eventdata, handles)
% hObject    handle to txt58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt58 as text
%        str2double(get(hObject,'String')) returns contents of txt58 as a double


% --- Executes during object creation, after setting all properties.
function txt58_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt59_Callback(hObject, eventdata, handles)
% hObject    handle to txt59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt59 as text
%        str2double(get(hObject,'String')) returns contents of txt59 as a double


% --- Executes during object creation, after setting all properties.
function txt59_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt510_Callback(hObject, eventdata, handles)
% hObject    handle to txt510 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt510 as text
%        str2double(get(hObject,'String')) returns contents of txt510 as a double


% --- Executes during object creation, after setting all properties.
function txt510_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt510 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt61_Callback(hObject, eventdata, handles)
% hObject    handle to txt61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt61 as text
%        str2double(get(hObject,'String')) returns contents of txt61 as a double


% --- Executes during object creation, after setting all properties.
function txt61_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt62_Callback(hObject, eventdata, handles)
% hObject    handle to txt62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt62 as text
%        str2double(get(hObject,'String')) returns contents of txt62 as a double


% --- Executes during object creation, after setting all properties.
function txt62_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt63_Callback(hObject, eventdata, handles)
% hObject    handle to txt63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt63 as text
%        str2double(get(hObject,'String')) returns contents of txt63 as a double


% --- Executes during object creation, after setting all properties.
function txt63_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt64_Callback(hObject, eventdata, handles)
% hObject    handle to txt64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt64 as text
%        str2double(get(hObject,'String')) returns contents of txt64 as a double


% --- Executes during object creation, after setting all properties.
function txt64_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt65_Callback(hObject, eventdata, handles)
% hObject    handle to txt65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt65 as text
%        str2double(get(hObject,'String')) returns contents of txt65 as a double


% --- Executes during object creation, after setting all properties.
function txt65_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt66_Callback(hObject, eventdata, handles)
% hObject    handle to txt66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt66 as text
%        str2double(get(hObject,'String')) returns contents of txt66 as a double


% --- Executes during object creation, after setting all properties.
function txt66_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt67_Callback(hObject, eventdata, handles)
% hObject    handle to txt67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt67 as text
%        str2double(get(hObject,'String')) returns contents of txt67 as a double


% --- Executes during object creation, after setting all properties.
function txt67_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt68_Callback(hObject, eventdata, handles)
% hObject    handle to txt68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt68 as text
%        str2double(get(hObject,'String')) returns contents of txt68 as a double


% --- Executes during object creation, after setting all properties.
function txt68_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt69_Callback(hObject, eventdata, handles)
% hObject    handle to txt69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt69 as text
%        str2double(get(hObject,'String')) returns contents of txt69 as a double


% --- Executes during object creation, after setting all properties.
function txt69_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt610_Callback(hObject, eventdata, handles)
% hObject    handle to txt610 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt610 as text
%        str2double(get(hObject,'String')) returns contents of txt610 as a double


% --- Executes during object creation, after setting all properties.
function txt610_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt610 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt71_Callback(hObject, eventdata, handles)
% hObject    handle to txt71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt71 as text
%        str2double(get(hObject,'String')) returns contents of txt71 as a double


% --- Executes during object creation, after setting all properties.
function txt71_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt72_Callback(hObject, eventdata, handles)
% hObject    handle to txt72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt72 as text
%        str2double(get(hObject,'String')) returns contents of txt72 as a double


% --- Executes during object creation, after setting all properties.
function txt72_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt73_Callback(hObject, eventdata, handles)
% hObject    handle to txt73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt73 as text
%        str2double(get(hObject,'String')) returns contents of txt73 as a double


% --- Executes during object creation, after setting all properties.
function txt73_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt74_Callback(hObject, eventdata, handles)
% hObject    handle to txt74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt74 as text
%        str2double(get(hObject,'String')) returns contents of txt74 as a double


% --- Executes during object creation, after setting all properties.
function txt74_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt75_Callback(hObject, eventdata, handles)
% hObject    handle to txt75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt75 as text
%        str2double(get(hObject,'String')) returns contents of txt75 as a double


% --- Executes during object creation, after setting all properties.
function txt75_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt76_Callback(hObject, eventdata, handles)
% hObject    handle to txt76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt76 as text
%        str2double(get(hObject,'String')) returns contents of txt76 as a double


% --- Executes during object creation, after setting all properties.
function txt76_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt77_Callback(hObject, eventdata, handles)
% hObject    handle to txt77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt77 as text
%        str2double(get(hObject,'String')) returns contents of txt77 as a double


% --- Executes during object creation, after setting all properties.
function txt77_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt78_Callback(hObject, eventdata, handles)
% hObject    handle to txt78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt78 as text
%        str2double(get(hObject,'String')) returns contents of txt78 as a double


% --- Executes during object creation, after setting all properties.
function txt78_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt79_Callback(hObject, eventdata, handles)
% hObject    handle to txt79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt79 as text
%        str2double(get(hObject,'String')) returns contents of txt79 as a double


% --- Executes during object creation, after setting all properties.
function txt79_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt710_Callback(hObject, eventdata, handles)
% hObject    handle to txt710 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt710 as text
%        str2double(get(hObject,'String')) returns contents of txt710 as a double


% --- Executes during object creation, after setting all properties.
function txt710_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt710 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt81_Callback(hObject, eventdata, handles)
% hObject    handle to txt81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt81 as text
%        str2double(get(hObject,'String')) returns contents of txt81 as a double


% --- Executes during object creation, after setting all properties.
function txt81_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt82_Callback(hObject, eventdata, handles)
% hObject    handle to txt82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt82 as text
%        str2double(get(hObject,'String')) returns contents of txt82 as a double


% --- Executes during object creation, after setting all properties.
function txt82_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt83_Callback(hObject, eventdata, handles)
% hObject    handle to txt83 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt83 as text
%        str2double(get(hObject,'String')) returns contents of txt83 as a double


% --- Executes during object creation, after setting all properties.
function txt83_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt83 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt84_Callback(hObject, eventdata, handles)
% hObject    handle to txt84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt84 as text
%        str2double(get(hObject,'String')) returns contents of txt84 as a double


% --- Executes during object creation, after setting all properties.
function txt84_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt85_Callback(hObject, eventdata, handles)
% hObject    handle to txt85 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt85 as text
%        str2double(get(hObject,'String')) returns contents of txt85 as a double


% --- Executes during object creation, after setting all properties.
function txt85_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt85 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt86_Callback(hObject, eventdata, handles)
% hObject    handle to txt86 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt86 as text
%        str2double(get(hObject,'String')) returns contents of txt86 as a double


% --- Executes during object creation, after setting all properties.
function txt86_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt86 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt87_Callback(hObject, eventdata, handles)
% hObject    handle to txt87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt87 as text
%        str2double(get(hObject,'String')) returns contents of txt87 as a double


% --- Executes during object creation, after setting all properties.
function txt87_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt88_Callback(hObject, eventdata, handles)
% hObject    handle to txt88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt88 as text
%        str2double(get(hObject,'String')) returns contents of txt88 as a double


% --- Executes during object creation, after setting all properties.
function txt88_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt89_Callback(hObject, eventdata, handles)
% hObject    handle to txt89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt89 as text
%        str2double(get(hObject,'String')) returns contents of txt89 as a double


% --- Executes during object creation, after setting all properties.
function txt89_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt810_Callback(hObject, eventdata, handles)
% hObject    handle to txt810 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt810 as text
%        str2double(get(hObject,'String')) returns contents of txt810 as a double


% --- Executes during object creation, after setting all properties.
function txt810_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt810 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt91_Callback(hObject, eventdata, handles)
% hObject    handle to txt91 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt91 as text
%        str2double(get(hObject,'String')) returns contents of txt91 as a double


% --- Executes during object creation, after setting all properties.
function txt91_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt91 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt92_Callback(hObject, eventdata, handles)
% hObject    handle to txt92 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt92 as text
%        str2double(get(hObject,'String')) returns contents of txt92 as a double


% --- Executes during object creation, after setting all properties.
function txt92_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt92 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt93_Callback(hObject, eventdata, handles)
% hObject    handle to txt93 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt93 as text
%        str2double(get(hObject,'String')) returns contents of txt93 as a double


% --- Executes during object creation, after setting all properties.
function txt93_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt93 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt94_Callback(hObject, eventdata, handles)
% hObject    handle to txt94 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt94 as text
%        str2double(get(hObject,'String')) returns contents of txt94 as a double


% --- Executes during object creation, after setting all properties.
function txt94_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt94 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt95_Callback(hObject, eventdata, handles)
% hObject    handle to txt95 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt95 as text
%        str2double(get(hObject,'String')) returns contents of txt95 as a double


% --- Executes during object creation, after setting all properties.
function txt95_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt95 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt96_Callback(hObject, eventdata, handles)
% hObject    handle to txt96 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt96 as text
%        str2double(get(hObject,'String')) returns contents of txt96 as a double


% --- Executes during object creation, after setting all properties.
function txt96_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt96 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt97_Callback(hObject, eventdata, handles)
% hObject    handle to txt97 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt97 as text
%        str2double(get(hObject,'String')) returns contents of txt97 as a double


% --- Executes during object creation, after setting all properties.
function txt97_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt97 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt98_Callback(hObject, eventdata, handles)
% hObject    handle to txt98 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt98 as text
%        str2double(get(hObject,'String')) returns contents of txt98 as a double


% --- Executes during object creation, after setting all properties.
function txt98_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt98 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt99_Callback(hObject, eventdata, handles)
% hObject    handle to txt99 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt99 as text
%        str2double(get(hObject,'String')) returns contents of txt99 as a double


% --- Executes during object creation, after setting all properties.
function txt99_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt99 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt910_Callback(hObject, eventdata, handles)
% hObject    handle to txt910 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt910 as text
%        str2double(get(hObject,'String')) returns contents of txt910 as a double


% --- Executes during object creation, after setting all properties.
function txt910_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt910 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt101_Callback(hObject, eventdata, handles)
% hObject    handle to txt101 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt101 as text
%        str2double(get(hObject,'String')) returns contents of txt101 as a double


% --- Executes during object creation, after setting all properties.
function txt101_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt101 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt102_Callback(hObject, eventdata, handles)
% hObject    handle to txt102 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt102 as text
%        str2double(get(hObject,'String')) returns contents of txt102 as a double


% --- Executes during object creation, after setting all properties.
function txt102_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt102 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt103_Callback(hObject, eventdata, handles)
% hObject    handle to txt103 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt103 as text
%        str2double(get(hObject,'String')) returns contents of txt103 as a double


% --- Executes during object creation, after setting all properties.
function txt103_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt103 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt104_Callback(hObject, eventdata, handles)
% hObject    handle to txt104 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt104 as text
%        str2double(get(hObject,'String')) returns contents of txt104 as a double


% --- Executes during object creation, after setting all properties.
function txt104_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt104 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt105_Callback(hObject, eventdata, handles)
% hObject    handle to txt105 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt105 as text
%        str2double(get(hObject,'String')) returns contents of txt105 as a double


% --- Executes during object creation, after setting all properties.
function txt105_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt105 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt106_Callback(hObject, eventdata, handles)
% hObject    handle to txt106 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt106 as text
%        str2double(get(hObject,'String')) returns contents of txt106 as a double


% --- Executes during object creation, after setting all properties.
function txt106_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt106 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt107_Callback(hObject, eventdata, handles)
% hObject    handle to txt107 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt107 as text
%        str2double(get(hObject,'String')) returns contents of txt107 as a double


% --- Executes during object creation, after setting all properties.
function txt107_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt107 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt108_Callback(hObject, eventdata, handles)
% hObject    handle to txt108 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt108 as text
%        str2double(get(hObject,'String')) returns contents of txt108 as a double


% --- Executes during object creation, after setting all properties.
function txt108_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt108 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt109_Callback(hObject, eventdata, handles)
% hObject    handle to txt109 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt109 as text
%        str2double(get(hObject,'String')) returns contents of txt109 as a double


% --- Executes during object creation, after setting all properties.
function txt109_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt109 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt1010_Callback(hObject, eventdata, handles)
% hObject    handle to txt1010 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt1010 as text
%        str2double(get(hObject,'String')) returns contents of txt1010 as a double


% --- Executes during object creation, after setting all properties.
function txt1010_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt1010 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in txtSolucion.
function txtSolucion_Callback(hObject, eventdata, handles)
% hObject    handle to txtSolucion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txtSolucion contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txtSolucion


% --- Executes during object creation, after setting all properties.
function txtSolucion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtSolucion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end






%--------------------------------------------------------------------------






function [assignment,cost] = funcionAsignacion(costMat)

assignment = zeros(1,size(costMat,1));
cost = 0;

validMat = costMat == costMat & costMat < Inf;
bigM = 10^(ceil(log10(sum(costMat(validMat))))+1);
costMat(~validMat) = bigM;

% costMat(costMat~=costMat)=Inf;
% validMat = costMat<Inf;
validCol = any(validMat,1);
validRow = any(validMat,2);

nRows = sum(validRow);
nCols = sum(validCol);
n = max(nRows,nCols);
if ~n
    return
end

maxv=10*max(costMat(validMat));

dMat = zeros(n) + maxv;
dMat(1:nRows,1:nCols) = costMat(validRow,validCol);

%*************************************************
% Empieza la asignación
%*************************************************

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   STEP 1: Subtract the row minimum from each row.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minR = min(dMat,[],2);
minC = min(bsxfun(@minus, dMat, minR));

%**************************************************************************  
%   STEP 2: Find a zero of dMat. If there are no starred zeros in its
%           column or row start the zero. Repeat for each zero
%**************************************************************************
zP = dMat == bsxfun(@plus, minC, minR);

starZ = zeros(n,1);
while any(zP(:))
    [r,c]=find(zP,1);
    starZ(r)=c;
    zP(r,:)=false;
    zP(:,c)=false;
end

while 1
%**************************************************************************
%   STEP 3: Cover each column with a starred zero. If all the columns are
%           covered then the matching is maximum
%**************************************************************************
    if all(starZ>0)
        break
    end
    coverColumn = false(1,n);
    coverColumn(starZ(starZ>0))=true;
    coverRow = false(n,1);
    primeZ = zeros(n,1);
    [rIdx, cIdx] = find(dMat(~coverRow,~coverColumn)==bsxfun(@plus,minR(~coverRow),minC(~coverColumn)));
    while 1
        %**************************************************************************
        %   STEP 4: Find a noncovered zero and prime it.  If there is no starred
        %           zero in the row containing this primed zero, Go to Step 5.  
        %           Otherwise, cover this row and uncover the column containing 
        %           the starred zero. Continue in this manner until there are no 
        %           uncovered zeros left. Save the smallest uncovered value and 
        %           Go to Step 6.
        %**************************************************************************
        cR = find(~coverRow);
        cC = find(~coverColumn);
        rIdx = cR(rIdx);
        cIdx = cC(cIdx);
        Step = 6;
        while ~isempty(cIdx)
            uZr = rIdx(1);
            uZc = cIdx(1);
            primeZ(uZr) = uZc;
            stz = starZ(uZr);
            if ~stz
                Step = 5;
                break;
            end
            coverRow(uZr) = true;
            coverColumn(stz) = false;
            z = rIdx==uZr;
            rIdx(z) = [];
            cIdx(z) = [];
            cR = find(~coverRow);
            z = dMat(~coverRow,stz) == minR(~coverRow) + minC(stz);
            rIdx = [rIdx(:);cR(z)];
            cIdx = [cIdx(:);stz(ones(sum(z),1))];
        end
        if Step == 6
            % *************************************************************************
            % STEP 6: Add the minimum uncovered value to every element of each covered
            %         row, and subtract it from every element of each uncovered column.
            %         Return to Step 4 without altering any stars, primes, or covered lines.
            %**************************************************************************
            [minval,rIdx,cIdx]=outerplus(dMat(~coverRow,~coverColumn),minR(~coverRow),minC(~coverColumn));            
            minC(~coverColumn) = minC(~coverColumn) + minval;
            minR(coverRow) = minR(coverRow) - minval;
        else
            break
        end
    end
    %**************************************************************************
    % STEP 5:
    %  Construct a series of alternating primed and starred zeros as
    %  follows:
    %  Let Z0 represent the uncovered primed zero found in Step 4.
    %  Let Z1 denote the starred zero in the column of Z0 (if any).
    %  Let Z2 denote the primed zero in the row of Z1 (there will always
    %  be one).  Continue until the series terminates at a primed zero
    %  that has no starred zero in its column.  Unstar each starred
    %  zero of the series, star each primed zero of the series, erase
    %  all primes and uncover every line in the matrix.  Return to Step 3.
    %**************************************************************************
    rowZ1 = find(starZ==uZc);
    starZ(uZr)=uZc;
    while rowZ1>0
        starZ(rowZ1)=0;
        uZc = primeZ(rowZ1);
        uZr = rowZ1;
        rowZ1 = find(starZ==uZc);
        starZ(uZr)=uZc;
    end
end

% Costo de la asignación
rowIdx = find(validRow);
colIdx = find(validCol);
starZ = starZ(1:nRows);
vIdx = starZ <= nCols;
assignment(rowIdx(vIdx)) = colIdx(starZ(vIdx));
pass = assignment(assignment>0);
pass(~diag(validMat(assignment>0,pass))) = 0;
assignment(assignment>0) = pass;
cost = trace(costMat(assignment>0,assignment(assignment>0)));

function [minval,rIdx,cIdx]=outerplus(M,x,y)
ny=size(M,2);
minval=inf;
for c=1:ny
    M(:,c)=M(:,c)-(x+y(c));
    minval = min(minval,min(M(:,c)));
end
[rIdx,cIdx]=find(M==minval);


% --- Executes on button press in botonResolver.
function botonResolver_Callback(hObject, eventdata, handles)
% hObject    handle to botonResolver (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Limpia los campos donde se muestran las soluciones
set(handles.txtObjetivo,'String',num2str(''))

%Lectura de los datos

matriz11=str2double(get(handles.txt11,'string'));
matriz12=str2double(get(handles.txt12,'string'));
matriz13=str2double(get(handles.txt13,'string'));
matriz14=str2double(get(handles.txt14,'string'));
matriz15=str2double(get(handles.txt15,'string'));
matriz16=str2double(get(handles.txt16,'string'));
matriz17=str2double(get(handles.txt17,'string'));
matriz18=str2double(get(handles.txt18,'string'));
matriz19=str2double(get(handles.txt19,'string'));
matriz110=str2double(get(handles.txt110,'string'));

matriz21=str2double(get(handles.txt21,'string'));
matriz22=str2double(get(handles.txt22,'string'));
matriz23=str2double(get(handles.txt23,'string'));
matriz24=str2double(get(handles.txt24,'string'));
matriz25=str2double(get(handles.txt25,'string'));
matriz26=str2double(get(handles.txt26,'string'));
matriz27=str2double(get(handles.txt27,'string'));
matriz28=str2double(get(handles.txt28,'string'));
matriz29=str2double(get(handles.txt29,'string'));
matriz210=str2double(get(handles.txt210,'string'));

matriz31=str2double(get(handles.txt31,'string'));
matriz32=str2double(get(handles.txt32,'string'));
matriz33=str2double(get(handles.txt33,'string'));
matriz34=str2double(get(handles.txt34,'string'));
matriz35=str2double(get(handles.txt35,'string'));
matriz36=str2double(get(handles.txt36,'string'));
matriz37=str2double(get(handles.txt37,'string'));
matriz38=str2double(get(handles.txt38,'string'));
matriz39=str2double(get(handles.txt39,'string'));
matriz310=str2double(get(handles.txt310,'string'));

matriz41=str2double(get(handles.txt41,'string'));
matriz42=str2double(get(handles.txt42,'string'));
matriz43=str2double(get(handles.txt43,'string'));
matriz44=str2double(get(handles.txt44,'string'));
matriz45=str2double(get(handles.txt45,'string'));
matriz46=str2double(get(handles.txt46,'string'));
matriz47=str2double(get(handles.txt47,'string'));
matriz48=str2double(get(handles.txt48,'string'));
matriz49=str2double(get(handles.txt49,'string'));
matriz410=str2double(get(handles.txt410,'string'));

matriz51=str2double(get(handles.txt51,'string'));
matriz52=str2double(get(handles.txt52,'string'));
matriz53=str2double(get(handles.txt53,'string'));
matriz54=str2double(get(handles.txt54,'string'));
matriz55=str2double(get(handles.txt55,'string'));
matriz56=str2double(get(handles.txt56,'string'));
matriz57=str2double(get(handles.txt57,'string'));
matriz58=str2double(get(handles.txt58,'string'));
matriz59=str2double(get(handles.txt59,'string'));
matriz510=str2double(get(handles.txt510,'string'));

matriz61=str2double(get(handles.txt61,'string'));
matriz62=str2double(get(handles.txt62,'string'));
matriz63=str2double(get(handles.txt63,'string'));
matriz64=str2double(get(handles.txt64,'string'));
matriz65=str2double(get(handles.txt65,'string'));
matriz66=str2double(get(handles.txt66,'string'));
matriz67=str2double(get(handles.txt67,'string'));
matriz68=str2double(get(handles.txt68,'string'));
matriz69=str2double(get(handles.txt69,'string'));
matriz610=str2double(get(handles.txt610,'string'));

matriz71=str2double(get(handles.txt71,'string'));
matriz72=str2double(get(handles.txt72,'string'));
matriz73=str2double(get(handles.txt73,'string'));
matriz74=str2double(get(handles.txt74,'string'));
matriz75=str2double(get(handles.txt75,'string'));
matriz76=str2double(get(handles.txt76,'string'));
matriz77=str2double(get(handles.txt77,'string'));
matriz78=str2double(get(handles.txt78,'string'));
matriz79=str2double(get(handles.txt79,'string'));
matriz710=str2double(get(handles.txt710,'string'));

matriz81=str2double(get(handles.txt81,'string'));
matriz82=str2double(get(handles.txt82,'string'));
matriz83=str2double(get(handles.txt83,'string'));
matriz84=str2double(get(handles.txt84,'string'));
matriz85=str2double(get(handles.txt85,'string'));
matriz86=str2double(get(handles.txt86,'string'));
matriz87=str2double(get(handles.txt87,'string'));
matriz88=str2double(get(handles.txt88,'string'));
matriz89=str2double(get(handles.txt89,'string'));
matriz810=str2double(get(handles.txt810,'string'));

matriz91=str2double(get(handles.txt91,'string'));
matriz92=str2double(get(handles.txt92,'string'));
matriz93=str2double(get(handles.txt93,'string'));
matriz94=str2double(get(handles.txt94,'string'));
matriz95=str2double(get(handles.txt95,'string'));
matriz96=str2double(get(handles.txt96,'string'));
matriz97=str2double(get(handles.txt97,'string'));
matriz98=str2double(get(handles.txt98,'string'));
matriz99=str2double(get(handles.txt99,'string'));
matriz910=str2double(get(handles.txt910,'string'));

matriz101=str2double(get(handles.txt101,'string'));
matriz102=str2double(get(handles.txt102,'string'));
matriz103=str2double(get(handles.txt103,'string'));
matriz104=str2double(get(handles.txt104,'string'));
matriz105=str2double(get(handles.txt105,'string'));
matriz106=str2double(get(handles.txt106,'string'));
matriz107=str2double(get(handles.txt107,'string'));
matriz108=str2double(get(handles.txt108,'string'));
matriz109=str2double(get(handles.txt109,'string'));
matriz1010=str2double(get(handles.txt1010,'string'));

%Llenado de la matriz
%Primera fila
if matriz11 >= 0
    m(1,1) = matriz11;
end
if matriz12 >= 0
    m(1,2) = matriz12;
end
if matriz13 >= 0
    m(1,3) = matriz13;
end
if matriz14 >= 0
    m(1,4) = matriz14;
end
if matriz15 >= 0
    m(1,5) = matriz15;
end
if matriz16 >= 0
    m(1,6) = matriz16;
end
if matriz17 >= 0
    m(1,7) = matriz17;
end
if matriz18 >= 0
    m(1,8) = matriz18;
end
if matriz19 >= 0
    m(1,9) = matriz19;
end
if matriz110 >= 0
    m(1,10) = matriz110;
end

%Segunda fila
if matriz21 >= 0
    m(2,1) = matriz21;
end
if matriz22 >= 0
    m(2,2) = matriz22;
end
if matriz23 >= 0
    m(2,3) = matriz23;
end
if matriz24 >= 0
    m(2,4) = matriz24;
end
if matriz25 >= 0
    m(2,5) = matriz25;
end
if matriz26 >= 0
    m(2,6) = matriz26;
end
if matriz27 >= 0
    m(2,7) = matriz27;
end
if matriz28 >= 0
    m(2,8) = matriz28;
end
if matriz29 >= 0
    m(2,9) = matriz29;
end
if matriz210 >= 0
    m(2,10) = matriz210;
end

%Tercera fila
if matriz31 >= 0
    m(3,1) = matriz31;
end
if matriz32 >= 0
    m(3,2) = matriz32;
end
if matriz33 >= 0
    m(3,3) = matriz33;
end
if matriz34 >= 0
    m(3,4) = matriz34;
end
if matriz35 >= 0
    m(3,5) = matriz35;
end
if matriz36 >= 0
    m(3,6) = matriz36;
end
if matriz37 >= 0
    m(3,7) = matriz37;
end
if matriz38 >= 0
    m(3,8) = matriz38;
end
if matriz39 >= 0
    m(3,9) = matriz39;
end
if matriz310 >= 0
    m(3,10) = matriz310;
end

%Cuarta fila
if matriz41 >= 0
    m(4,1) = matriz41;
end
if matriz42 >= 0
    m(4,2) = matriz42;
end
if matriz43 >= 0
    m(4,3) = matriz43;
end
if matriz44 >= 0
    m(4,4) = matriz44;
end
if matriz45 >= 0
    m(4,5) = matriz45;
end
if matriz46 >= 0
    m(4,6) = matriz46;
end
if matriz47 >= 0
    m(4,7) = matriz47;
end
if matriz48 >= 0
    m(4,8) = matriz48;
end
if matriz49 >= 0
    m(4,9) = matriz49;
end
if matriz410 >= 0
    m(4,10) = matriz410;
end

%Quinta fila
if matriz51 >= 0
    m(5,1) = matriz51;
end
if matriz52 >= 0
    m(5,2) = matriz52;
end
if matriz53 >= 0
    m(5,3) = matriz53;
end
if matriz54 >= 0
    m(5,4) = matriz54;
end
if matriz55 >= 0
    m(5,5) = matriz55;
end
if matriz56 >= 0
    m(5,6) = matriz56;
end
if matriz57 >= 0
    m(5,7) = matriz57;
end
if matriz58 >= 0
    m(5,8) = matriz58;
end
if matriz59 >= 0
    m(5,9) = matriz59;
end
if matriz510 >= 0
    m(5,10) = matriz510;
end

%Sexta fila
if matriz61 >= 0
    m(6,1) = matriz61;
end
if matriz62 >= 0
    m(6,2) = matriz62;
end
if matriz63 >= 0
    m(6,3) = matriz63;
end
if matriz64 >= 0
    m(6,4) = matriz64;
end
if matriz65 >= 0
    m(6,5) = matriz65;
end
if matriz66 >= 0
    m(6,6) = matriz66;
end
if matriz67 >= 0
    m(6,7) = matriz67;
end
if matriz68 >= 0
    m(6,8) = matriz68;
end
if matriz69 >= 0
    m(6,9) = matriz69;
end
if matriz610 >= 0
    m(6,10) = matriz610;
end

%Séptima fila
if matriz71 >= 0
    m(7,1) = matriz71;
end
if matriz72 >= 0
    m(7,2) = matriz72;
end
if matriz73 >= 0
    m(7,3) = matriz73;
end
if matriz74 >= 0
    m(7,4) = matriz74;
end
if matriz75 >= 0
    m(7,5) = matriz75;
end
if matriz76 >= 0
    m(7,6) = matriz76;
end
if matriz77 >= 0
    m(7,7) = matriz77;
end
if matriz78 >= 0
    m(7,8) = matriz78;
end
if matriz79 >= 0
    m(7,9) = matriz79;
end
if matriz710 >= 0
    m(7,10) = matriz710;
end

%Ocatava fila
if matriz81 >= 0
    m(8,1) = matriz81;
end
if matriz82 >= 0
    m(8,2) = matriz82;
end
if matriz83 >= 0
    m(8,3) = matriz83;
end
if matriz84 >= 0
    m(8,4) = matriz84;
end
if matriz85 >= 0
    m(8,5) = matriz85;
end
if matriz86 >= 0
    m(8,6) = matriz86;
end
if matriz87 >= 0
    m(8,7) = matriz87;
end
if matriz88 >= 0
    m(8,8) = matriz88;
end
if matriz89 >= 0
    m(8,9) = matriz89;
end
if matriz810 >= 0
    m(8,10) = matriz810;
end

%Novena fila
if matriz91 >= 0
    m(9,1) = matriz91;
end
if matriz92 >= 0
    m(9,2) = matriz92;
end
if matriz93 >= 0
    m(9,3) = matriz93;
end
if matriz94 >= 0
    m(9,4) = matriz94;
end
if matriz95 >= 0
    m(9,5) = matriz95;
end
if matriz96 >= 0
    m(9,6) = matriz96;
end
if matriz97 >= 0
    m(9,7) = matriz97;
end
if matriz98 >= 0
    m(9,8) = matriz98;
end
if matriz99 >= 0
    m(9,9) = matriz99;
end
if matriz910 >= 0
    m(9,10) = matriz910;
end

%Décima fila
if matriz101 >= 0
    m(10,1) = matriz101;
end
if matriz102 >= 0
    m(10,2) = matriz102;
end
if matriz103 >= 0
    m(10,3) = matriz103;
end
if matriz104 >= 0
    m(10,4) = matriz104;
end
if matriz105 >= 0
    m(10,5) = matriz105;
end
if matriz106 >= 0
    m(10,6) = matriz106;
end
if matriz107 >= 0
    m(10,7) = matriz107;
end
if matriz108 >= 0
    m(10,8) = matriz108;
end
if matriz109 >= 0
    m(10,9) = matriz109;
end
if matriz1010 >= 0
    m(10,10) = matriz1010;
end
m

[solucion, costo] = funcionAsignacion(m);
solucion
costo

%Se muesta las asignaciones

set(handles.txtObjetivo,'String',num2str(costo))

if length(solucion)>= 1
    if solucion(1) > 0
        set(handles.txtSolucion1,'String',['El origen 1 se dirige al destino ',num2str(solucion(1))])
    end
end

if length(solucion)>= 2
    if solucion(2) > 0
        set(handles.txtSolucion2,'String',['El origen 2 se dirige al destino ',num2str(solucion(2))])
    end
end

if length(solucion)>= 3
    if solucion(3) > 0
        set(handles.txtSolucion3,'String',['El origen 3 se dirige al destino ',num2str(solucion(3))])
    end
end

if length(solucion)>= 4
    if solucion(4) > 0
        set(handles.txtSolucion4,'String',['El origen 4 se dirige al destino ',num2str(solucion(4))])
    end
end

if length(solucion)>= 5
    if solucion(5) > 0
        set(handles.txtSolucion5,'String',['El origen 5 se dirige al destino ',num2str(solucion(5))])
    end
end

if length(solucion)>= 6
    if solucion(6) > 0
        set(handles.txtSolucion6,'String',['El origen 6 se dirige al destino ',num2str(solucion(6))])
    end
end

if length(solucion)>= 7
    if solucion(7) > 0
        set(handles.txtSolucion7,'String',['El origen 7 se dirige al destino ',num2str(solucion(7))])
    end
end

if length(solucion)>= 8
    if solucion(8) > 0
        set(handles.txtSolucion8,'String',['El origen 8 se dirige al destino ',num2str(solucion(8))])
    end
end

if length(solucion)>= 9
    if solucion(9) > 0
        set(handles.txtSolucion9,'String',['El origen 9 se dirige al destino ',num2str(solucion(9))])
    end
end

if length(solucion)>= 10
    if solucion(10) > 0
        set(handles.txtSolucion10,'String',['El origen 10 se dirige al destino ',num2str(solucion(10))])
    end
end
