function varargout = kasir(varargin)
% KASIR MATLAB code for kasir.fig

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kasir_OpeningFcn, ...
                   'gui_OutputFcn',  @kasir_OutputFcn, ...
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


% --- Executes just before kasir is made visible.
function kasir_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);



% --- Outputs from this function are returned to the command line.
function varargout = kasir_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in permen.
function permen_Callback(hObject, eventdata, handles)
%BUTTON PERMEN
currentCounterValue = str2double(get(handles.edit1, 'String'));
newString = sprintf('%d', int32(currentCounterValue +1));
set(handles.edit1,'string',newString);


% --- Executes on button press in kacang.
function kacang_Callback(hObject, eventdata, handles)
% BUTTON KACANG
currentCounterValue = str2double(get(handles.edit2, 'String'));
newString = sprintf('%d', int32(currentCounterValue +1));
set(handles.edit2,'string',newString);


% --- Executes on button press in susu.
function susu_Callback(hObject, eventdata, handles)
% BUTTON SUSU
currentCounterValue = str2double(get(handles.edit3, 'String'));
newString = sprintf('%d', int32(currentCounterValue +1));
set(handles.edit3,'string',newString);



function edit1_Callback(hObject, eventdata, handles)
% TOTAL PERMEN DIBELI


function edit1_CreateFcn(hObject, eventdata, handles)
% FUNCTION BAWAAN
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% TOTAL KACANG DIBELI

function edit2_CreateFcn(hObject, eventdata, handles)
% FUNCTION BAWAAN
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% TOTAL SUSU DIBELI

function edit3_CreateFcn(hObject, eventdata, handles)
% FUNCTION BAWAAN
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% TOAL HARGA

function edit5_CreateFcn(hObject, eventdata, handles)
% FUNCTION BAWAAN

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% TOTAL HARGA KACANG

function edit6_CreateFcn(hObject, eventdata, handles)
% FUNCTION BAWAAN.

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% TOTAL HARGA SUSU

function edit7_CreateFcn(hObject, eventdata, handles)
% FUNCTION BAWAAN
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% TOTAL HARGA SEMUA

function edit8_CreateFcn(hObject, eventdata, handles)
% FUNCTION BAWAAN

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
%INI HITUNG PERMEN
JumlahPermen = str2double(get(handles.edit1, 'string'));
TotalHarga   = 1000*JumlahPermen;
set(handles.edit5,'string',TotalHarga);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% INI HITUNG KACANG
JumlahKacang = str2double(get(handles.edit2, 'string'));
TotalHarga   = 2000*JumlahKacang;
set(handles.edit6,'string',TotalHarga);


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% INI HITUNG SUSU
JumlahSusu = str2double(get(handles.edit3, 'string'));
TotalHarga   = 5000*JumlahSusu;
set(handles.edit7,'string',TotalHarga);


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% BUTTON HITUNG TOTAL
getPermen = str2double(get(handles.edit5, 'string'))
getKacang = str2double(get(handles.edit6, 'string'))
getSusu   = str2double(get(handles.edit7, 'string'))
getTotal  = getPermen+getKacang+getSusu;

discount = 0;
static   = 'YHA, GADAPET DISKON! MAKANYA BELANJA YANG BANYAK :)';

if getTotal > 100000
    discount = 0.25;
    static   = 'SELAMAT ANDA MENDAPAT DISKON 25%';
elseif (getTotal > 50000) && (getTotal < 100000)
    discount = 0.05;
    static   = 'SELAMAT ANDA MENDAPAT DISKON 5%';
end

DiscountPrice = discount * getTotal;
TotalPrice    = getTotal - DiscountPrice;
set(handles.edit8,'string',TotalPrice);

str = get(hObject,'String');
set(handles.text9,'String',static);
