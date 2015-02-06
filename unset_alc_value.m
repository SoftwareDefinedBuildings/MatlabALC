function unset_alc_value(system,pointname)
% Unset the point of an ALC system: the point will be unlocked
% input 1 - structure with url, user and pwd of the ALC system
% input 2 - name of point, such as: '#etc_fcu_-_sample_equipment/sf_vfd_output'

if exist('EvalExpServiceService','file')~=2
    createClassFromWsdl(strcat(system.url,'/_common/services/EvalService?wsdl'));
end
obj = EvalExpServiceService;

setValue(obj, system.user, system.pwd, strcat(pointname,'/locked'), 'false','');