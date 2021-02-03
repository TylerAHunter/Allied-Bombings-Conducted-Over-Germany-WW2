function [] = BombPlot(Table,ScatterPlot,PauseTime,GDP,TankPlot,BPlanePlot,FPlanePlot,Rifle,ProductionData)
%Takes in a set of points, adjusts them according to the Lat/Lon lines
%before plotting them onto a scatterplot

x = Table.LONGITUDE
y = Table.LATITUDE
%These values are set up in the case of an empty array
CurrentYear = 1939;
CurrentMonth = 9;
Months = {'January','Februrary','March','April','May','June','July','August','September','October','November','December'}
%This is the case where the array isnt empty
if length(x) > 0 
CurrentYear = Table.YEAR(1);
CurrentMonth =Table.MONTH(1)
DisplayMonth = (Months(CurrentMonth));
DisplayMonth = DisplayMonth{1}
end 


%Updates the title of the masterplot
str = sprintf('Bombings from September 1939 to %s %d',DisplayMonth,CurrentYear) 
sgtitle(str)
%This calculates the array position chronologically such that 1939
%September is position 1, whilst 1939 October is position 2
ArrayPosition = (((CurrentYear-1939)*12+CurrentMonth) - 8)
%This calculates the x position for the current data point on the
%production axis 
XPosition = 1/12*(ArrayPosition)+1939.75;
%Updates the Plots with their respective production data for the current
%time. 
GDP.XData = [GDP.XData XPosition]
GDP.YData = [GDP.YData ProductionData(1,ArrayPosition)]

TankPlot.XData = [TankPlot.XData XPosition]
TankPlot.YData = [TankPlot.YData ProductionData(2,ArrayPosition)]

BPlanePlot.XData = [BPlanePlot.XData XPosition]
BPlanePlot.YData = [BPlanePlot.YData ProductionData(3,ArrayPosition)]


FPlanePlot.XData = [FPlanePlot.XData XPosition]
FPlanePlot.YData = [FPlanePlot.YData ProductionData(4,ArrayPosition)]

Rifle.XData = [Rifle.XData XPosition]
Rifle.YData = [Rifle.YData ProductionData(5,ArrayPosition)]

%This section is used to update the plot entry by entry but has been
%omitted for time reasons, this is probably due to the gif function since
%its unlikely the incredibly small pause would have that significant of an
%effect
% for k = 1:length(x) 
%      Longitude = x(1:k)
%      Latitude = y(1:k)
%      geoshow(ScatterPlot,Latitude,Longitude,'displaytype','Point')
%      pause(eps)
%      gif 
% end

Data = geoshow(ScatterPlot,y,x,'displaytype','Point')
pause(PauseTime)
gif 
end

