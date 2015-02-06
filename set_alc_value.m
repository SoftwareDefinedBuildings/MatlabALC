function set_alc_value(system,pointname, value)
% Set an ALC system point to be locked to a value
% input 1 - structure with url, user and pwd of the ALC system
% input 2 - name of point, such as: '#etc_fcu_-_sample_equipment/sf_vfd_output'
% input 3 - value to be set
%
% Example: to set the fan speed to 100%,
%   system = struct('url',url,'user',username,'pwd',password);
%   set_alc_trend(system,'#etc_fcu_-_sample_equipment/sf_vfd_output',100)

if exist('EvalExpServiceService','file')~=2
    createClassFromWsdl(strcat(system.url,'/_common/services/EvalService?wsdl'));
end
obj = EvalExpServiceService;

setValue(obj, system.user, system.pwd, strcat(pointname,'/locked'),'true','');
setValue(obj, system.user, system.pwd, strcat(pointname,'/locked_value'),value,'');
