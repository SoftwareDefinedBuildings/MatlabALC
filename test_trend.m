clc
clear all

% Fill in your own specs...
system = struct('type', 'soap', 'url',url,'user',username,'pwd',password);

trendname1 = '#etc_oa_terminal_-_sample_equipment/oat';
% trendname = '#etc_fcu_-_sample_equipment/sf_vfd_output'
% trendname = '#etc_fcu_-_sample_equipment/sup_dmpr_1_fdbk'
% trendname = '/#etc_fcu_-_sample_equipment/avg_zn_tmp'
trendname2 = '#etc_fcu_-_sample_equipment/lstat/zone_temp';
% trendname = '/#etc_fcu_-_sample_equipment/static';
% trendname = '#etc_fcu_-_sample_equipment/static';
trendname3 = '#etc_fcu_-_sample_equipment/sa_temp';

%  trend = get_alc_trend(system, trendname, now-2, now);
% trend = get_alc_trend(system,trendname,datenum(2012,2,11,14,30,0),datenum(2012,2,11,21,0,0));
% trend = get_alc_trend(system,trendname,datenum(2012,2,12,12,0,0),datenum(2012,2,12,17,0,0));
% trend = get_alc_trend(system, trendname, '10_31', '11_06');
% trend = get_alc_trend(system, trendname, '2_10', '2_12');
% trend = get_alc_trend(system, trendname, datenum(2012,2,11), datenum(2012,2,12));
%trend = get_alc_trend(system, trendname, datestr(datenum(2011,11,07)), datestr(datenum(2011,11,15)));
% trend = get_alc_trend(system,trendname,datenum([2012 3 3 0 0 0]),datenum([2012 3 3 17 0 0]));
OAT = get_alc_trend(system,trendname1,now-3/24,now);
zoneTemp = get_alc_trend(system,trendname2,now-3/24,now);
supplyTemp = get_alc_trend(system,trendname3,now-3/24,now);


plot(trend);
datetick('x')

save LabHVACdata OAT zoneTemp supplyTemp