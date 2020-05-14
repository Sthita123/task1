%A)The Excel file containing the data,covid.m* file and the GUI Figure(covid.fig) must be
%in the current folder.
%B)The Excel file is imported to MATLAB and all selected data (609x12) must
%be imported at once.From the workspace the data must be put to current
%folder  and renamed as 'data.mat'.



function varargout = covid(varargin)
 
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @covid_OpeningFcn, ...
                   'gui_OutputFcn',  @covid_OutputFcn, ...
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
 
function covid_OpeningFcn(hObject, eventdata, handles, varargin)
 
handles.output = hObject;

 
guidata(hObject, handles);

 function varargout = covid_OutputFcn(hObject, eventdata, handles) 
 
varargout{1} = handles.output;


 
function pushbutton1_Callback(hObject, eventdata, handles)
    popup_sel_index = get(handles.popupmenu1, 'Value');
    set(handles.edit2,'string','  ');
load data.mat
figure;
xlabel('Number of days');
ylabel('Number of Cases');
switch popup_sel_index
    case 1
        x=data.dateRep(2:122);
        y=data.cases(2:122);
        bar(x,y);
        set(handles.edit1,'string',sum(y));
        case 2
        x=data.dateRep(124:244);
        y=data.cases(124:244);
        bar(x,y);
        set(handles.edit1,'string',sum(y));
        
       case 3
        x=data.dateRep(246:365);
        y=data.cases(246:365);
        bar(x,y);
        set(handles.edit1,'string',sum(y));
        case 4
        x=data.dateRep(367:487);
        y=data.cases(367:487);
        bar(x,y);
        set(handles.edit1,'string',sum(y));
        case 5
        x=data.dateRep( 489:609);
        y=data.cases(489:609);
        bar(x,y);
        set(handles.edit1,'string',sum(y));
end

 
      
        
        
function pushbutton2_Callback(hObject, eventdata, handles)
         popup_sel_index = get(handles.popupmenu1, 'Value');
         set(handles.edit1,'string','  ');
load data.mat
figure;
xlabel('Number of days');
ylabel('Number of Deaths');
switch popup_sel_index
    case 1
        x=data.dateRep(2:122);
        y=data.deaths(2:122);
        bar(x,y);
        set(handles.edit2,'string',sum(y));
        case 2
        x=data.dateRep(124:244);
        y=data.deaths(124:244);
        bar(x,y);
        set(handles.edit2,'string',sum(y));
        
       case 3
        x=data.dateRep(246:365);
        y=data.deaths(246:365);
        bar(x,y);
        set(handles.edit2,'string',sum(y));
        case 4
        x=data.dateRep(367:487);
        y=data.deaths(367:487);
        bar(x,y);
        set(handles.edit2,'string',sum(y));
        case 5
        x=data.dateRep( 489:609);
        y=data.deaths(489:609);
        bar(x,y);
        set(handles.edit2,'string',sum(y));
end
        
        
 
 

 function pushbutton3_Callback(hObject, eventdata, handles)
 clc;

  popup_sel_index = get(handles.popupmenu1, 'Value');
load data.mat
figure;
xlabel('Number of days');
ylabel('Number of Cases');
switch popup_sel_index
    case 1
        x=data.dateRep(2:122);
        y=data.cases(2:122);
        z=data.deaths(2:122);
        subplot(211);
        bar(x,y);
         subplot(212);
        bar(x,z);
        set(handles.edit1,'string',sum(y));
        set(handles.edit2,'string',sum(z));
        case 2
        x=data.dateRep(124:244);
        y=data.cases(124:244);
        z=data.deaths( 124:244);
        subplot(211);
        bar(x,y);
        subplot(212);
        bar(x,z);
        set(handles.edit1,'string',sum(y));
        set(handles.edit2,'string',sum(z));
        
       case 3
        x=data.dateRep(246:365);
        y=data.cases(246:365);
        z=data.deaths(246:365);
        subplot(211);
        bar(x,y);
        subplot(212);
        bar(x,z);
        set(handles.edit1,'string',sum(y));
        set(handles.edit2,'string',sum(z));
        case 4
        x=data.dateRep(367:487);
        y=data.cases(367:487);
         z=data.deaths(367:487);
        subplot(211);
        bar(x,y);
        subplot(212);
        bar(x,z);
        set(handles.edit1,'string',sum(y));
        set(handles.edit2,'string',sum(z));
        case 5
        x=data.dateRep(489:609);
        y=data.cases(489:609);
        z=data.deaths(489:609);
        subplot(211);
        bar(x,y);
        subplot(212);
        bar(x,z);
        set(handles.edit1,'string',sum(y));
        set(handles.edit2,'string',sum(z))
end
        
        
 
 


function edit1_Callback(hObject, eventdata, handles)
 
function edit1_CreateFcn(hObject, eventdata, handles)
 
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
 
function edit2_CreateFcn(hObject, eventdata, handles)
 if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
 end


 
function popupmenu1_Callback(hObject, eventdata, handles)
   set(handles.edit1,'string','  ');
   set(handles.edit2,'string','  ');

 
function popupmenu1_CreateFcn(hObject, eventdata, handles)
 
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject, 'String', { 'Germany','China','India','Italy','USA'});
