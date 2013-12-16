function fig = sss()
% This is the machine-generated representation of a Handle Graphics object
% and its children.  Note that handle values may change when these objects
% are re-created. This may cause problems with any callbacks written to
% depend on the value of the handle at the time the object was saved.
% This problem is solved by saving the output as a FIG-file.
%
% To reopen this object, just type the name of the M-file at the MATLAB
% prompt. The M-file and its associated MAT-file must be on your path.
% 
% NOTE: certain newer features in MATLAB may not have been saved in this
% M-file due to limitations of this format, which has been superseded by
% FIG-files.  Figures which have been annotated using the plot editor tools
% are incompatible with the M-file/MAT-file format, and should be saved as
% FIG-files.

load sss

h0 = figure('Color',[0.8 0.8 0.8], ...
	'Colormap',mat0, ...
	'FileName','/proj/es/MERC/matlab/ADDA/DACgui/sss.m', ...
	'PaperPosition',[18 180 576 432], ...
	'PaperType','A4', ...
	'PaperUnits','points', ...
	'Position',[372 167 720 782], ...
	'Tag','Fig1', ...
	'ToolBar','none');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[0.6 0.6 0.9], ...
	'ListboxTop',0, ...
	'Position',[0.1 0.1 0.2 0.1], ...
	'String','Textruta', ...
	'Style','text', ...
	'Tag','Textruta');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[0.2 0.6 0.9], ...
	'Callback','disp(''hej'')', ...
	'ListboxTop',0, ...
	'Position',[0.2 0.2 0.2 0.1], ...
	'String','Skriv n�got', ...
	'Tag','Skriv n�got');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[1 1 1], ...
	'Callback','get(k,''String'')', ...
	'ListboxTop',0, ...
	'Position',[0.3 0.3 0.2 0.1], ...
	'String','12', ...
	'Style','edit', ...
	'Tag','ENOB');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'ListboxTop',0, ...
	'Position',[118.4 537.6 158.4 36.8], ...
	'Style','radiobutton', ...
	'Tag','Radiobutton1');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'ListboxTop',0, ...
	'Min',1, ...
	'Position',[83.2 416.8 127.2 64.8], ...
	'String',' ', ...
	'Style','popupmenu', ...
	'Tag','PopupMenu1', ...
	'Value',1);
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'ListboxTop',0, ...
	'Position',[157.6 320.8 134.4 43.2], ...
	'Style','checkbox', ...
	'Tag','Checkbox1');
if nargout > 0, fig = h0; end