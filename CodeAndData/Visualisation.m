%Used so that the program runs fresh on launch (this shouldn't be needed
%but helps for debugging purposes)
profile on
close all
clear
BombData = readtable('GERBOMB.xlsx');
%Sorting Data
BombingDates = [BombData.MSNDATE];
BombingLocations = [BombData.LONGITUDE,BombData.LATITUDE];
%% Production Data
%Interpolation of Data
x = [1939,1940,1941,1942,1943,1944,1945];
xq = [1:0.08333333333333333:7];
REP = 1;
GermanyGDP = repelem(interp1([351,384,387,412,417,426,437,310],xq),REP);
GermanyBattleTanks = repelem(interp1([962,1573,3399,4386,5813,7983,956],xq),REP);
GermanyBomberPlanes = repelem(interp1([737,2852,3373,4337,4649,2287,0],xq),REP);
GermanyFighterPlanes = repelem(interp1([605,2746,3744,5515,10898,25285,4935],xq),REP);
GermanyRifles = repelem(interp1([1371700,1371700,1358500,1149593,1946200,2282380,310118],xq),REP);
ProductionData = [GermanyGDP;GermanyBattleTanks;GermanyBomberPlanes;GermanyFighterPlanes;GermanyRifles];

%% Organizing Date Data
Bomb1939 = BombData(BombData.YEAR == 1939,:);
Bomb1940 = BombData(BombData.YEAR == 1940,:);
Bomb1941 = BombData(BombData.YEAR == 1941,:);
Bomb1942 = BombData(BombData.YEAR == 1942,:);
Bomb1943 = BombData(BombData.YEAR == 1943,:);
Bomb1944 = BombData(BombData.YEAR == 1944,:);
Bomb1945 = BombData(BombData.YEAR == 1945,:);
%Sort by Month and Year
Bomb1939Sep = Bomb1939(Bomb1939.MONTH == 9,:);
Bomb1939Oct = Bomb1939(Bomb1939.MONTH == 10,:);
Bomb1939Nov = Bomb1939(Bomb1939.MONTH == 11,:);
Bomb1939Dec = Bomb1939(Bomb1939.MONTH == 12,:);


Bomb1940Jan = Bomb1940(Bomb1940.MONTH == 1,:);
Bomb1940Feb = Bomb1940(Bomb1940.MONTH == 2,:);
Bomb1940Mar = Bomb1940(Bomb1940.MONTH == 3,:);
Bomb1940Apr = Bomb1940(Bomb1940.MONTH == 4,:);
Bomb1940May = Bomb1940(Bomb1940.MONTH == 5,:);
Bomb1940Jun = Bomb1940(Bomb1940.MONTH == 6,:);
Bomb1940Jul = Bomb1940(Bomb1940.MONTH == 7,:);
Bomb1940Aug = Bomb1940(Bomb1940.MONTH == 8,:);
Bomb1940Sep = Bomb1940(Bomb1940.MONTH == 9,:);
Bomb1940Oct = Bomb1940(Bomb1940.MONTH == 10,:);
Bomb1940Nov = Bomb1940(Bomb1940.MONTH == 11,:);
Bomb1940Dec = Bomb1940(Bomb1940.MONTH == 12,:);


Bomb1941Jan = Bomb1941(Bomb1941.MONTH == 1,:);
Bomb1941Feb = Bomb1941(Bomb1941.MONTH == 2,:);
Bomb1941Mar = Bomb1941(Bomb1941.MONTH == 3,:);
Bomb1941Apr = Bomb1941(Bomb1941.MONTH == 4,:);
Bomb1941May = Bomb1941(Bomb1941.MONTH == 5,:);
Bomb1941Jun = Bomb1941(Bomb1941.MONTH == 6,:);
Bomb1941Jul = Bomb1941(Bomb1941.MONTH == 7,:);
Bomb1941Aug = Bomb1941(Bomb1941.MONTH == 8,:);
Bomb1941Sep = Bomb1941(Bomb1941.MONTH == 9,:);
Bomb1941Oct = Bomb1941(Bomb1941.MONTH == 10,:);
Bomb1941Nov = Bomb1941(Bomb1941.MONTH == 11,:);
Bomb1941Dec = Bomb1941(Bomb1941.MONTH == 12,:);



Bomb1942Jan = Bomb1942(Bomb1942.MONTH == 1,:);
Bomb1942Feb = Bomb1942(Bomb1942.MONTH == 2,:);
Bomb1942Mar = Bomb1942(Bomb1942.MONTH == 3,:);
Bomb1942Apr = Bomb1942(Bomb1942.MONTH == 4,:);
Bomb1942May = Bomb1942(Bomb1942.MONTH == 5,:);
Bomb1942Jun = Bomb1942(Bomb1942.MONTH == 6,:);
Bomb1942Jul = Bomb1942(Bomb1942.MONTH == 7,:);
Bomb1942Aug = Bomb1942(Bomb1942.MONTH == 8,:);
Bomb1942Sep = Bomb1942(Bomb1942.MONTH == 9,:);
Bomb1942Oct = Bomb1942(Bomb1942.MONTH == 10,:);
Bomb1942Nov = Bomb1942(Bomb1942.MONTH == 11,:);
Bomb1942Dec = Bomb1942(Bomb1942.MONTH == 12,:);




Bomb1943Jan = Bomb1943(Bomb1943.MONTH == 1,:);
Bomb1943Feb = Bomb1943(Bomb1943.MONTH == 2,:);
Bomb1943Mar = Bomb1943(Bomb1943.MONTH == 3,:);
Bomb1943Apr = Bomb1943(Bomb1943.MONTH == 4,:);
Bomb1943May = Bomb1943(Bomb1943.MONTH == 5,:);
Bomb1943Jun = Bomb1943(Bomb1943.MONTH == 6,:);
Bomb1943Jul = Bomb1943(Bomb1943.MONTH == 7,:);
Bomb1943Aug = Bomb1943(Bomb1943.MONTH == 8,:);
Bomb1943Sep = Bomb1943(Bomb1943.MONTH == 9,:);
Bomb1943Oct = Bomb1943(Bomb1943.MONTH == 10,:);
Bomb1943Nov = Bomb1943(Bomb1943.MONTH == 11,:);
Bomb1943Dec = Bomb1943(Bomb1943.MONTH == 12,:);





Bomb1944Jan = Bomb1944(Bomb1944.MONTH == 1,:);
Bomb1944Feb = Bomb1944(Bomb1944.MONTH == 2,:);
Bomb1944Mar = Bomb1944(Bomb1944.MONTH == 3,:);
Bomb1944Apr = Bomb1944(Bomb1944.MONTH == 4,:);
Bomb1944May = Bomb1944(Bomb1944.MONTH == 5,:);
Bomb1944Jun = Bomb1944(Bomb1944.MONTH == 6,:);
Bomb1944Jul = Bomb1944(Bomb1944.MONTH == 7,:);
Bomb1944Aug = Bomb1944(Bomb1944.MONTH == 8,:);
Bomb1944Sep = Bomb1944(Bomb1944.MONTH == 9,:);
Bomb1944Oct = Bomb1944(Bomb1944.MONTH == 10,:);
Bomb1944Nov = Bomb1944(Bomb1944.MONTH == 11,:);
Bomb1944Dec = Bomb1944(Bomb1944.MONTH == 12,:);


Bomb1945Jan = Bomb1945(Bomb1945.MONTH == 1,:);
Bomb1945Feb = Bomb1945(Bomb1945.MONTH == 2,:);
Bomb1945Mar = Bomb1945(Bomb1945.MONTH == 3,:);
Bomb1945Apr = Bomb1945(Bomb1945.MONTH == 4,:);
Bomb1945May = Bomb1945(Bomb1945.MONTH == 5,:);
Bomb1945Jun = Bomb1945(Bomb1945.MONTH == 6,:);
Bomb1945Jul = Bomb1945(Bomb1945.MONTH == 7,:);
Bomb1945Aug = Bomb1945(Bomb1945.MONTH == 8,:);
Bomb1945Sep = Bomb1945(Bomb1945.MONTH == 9,:);



%%
%This section is responsible for creating the plot where the Lat/Lon data
%will be plotted. 
figure('units','normalized','outerposition',[0 0 1 1])
ImageSubplot = subplot(6,2,[1 3 5 7 9 11])
ScatterPlot = worldmap('germany')
worldmap([47 55],[5 15.5])
%City Mappings
Latitude = [52.516667,48.782343,50.11552,49.496706,53.575323,51.45657,48.15,51.228304,50.933333,49.235396,49.486021,53.073789,52.38497,50.73438,51.048562,51.34419]
Longitude = [13.4,9.180819,8.684167,8.479547,10.01534,7.012282,11.583333,6.793849,6.95,6.981646,11.086156,8.826754,9.737141,7.095485,13.745794,12.386504]

Cities = {'Berlin','Stuttgart','Frankfurt','Mannheim','Hamburg','Essen','Munich','Düsseldorf','Cologne','Saarbrücken','Marienberg','Bremen','Hannover','Bonn','Dresden','Leipzig'
};
%Maps the cities onto the map using their lat/lon coordinates
for i = 1:length(Cities)
String = Cities(i)
Lat = Latitude(i)
Lon = Longitude(i)
textm(Lat,Lon, String,'horizontalAlignment', 'Center','verticalAlignment','middle','fontname','SansSerrif')
end 
%Maps the countries
LandArea = geoshow('landareas.shp','FaceColor',[1 0.992 0.816])
%Maps the borders
Borders = geoshow('ne_10m_admin_0_boundary_lines_land.shp','Color','k')



%% GDP SUBPLOT
subplot(6,2,[2,4]);
GDPSUBPLOT = plot(1,GermanyGDP(1));
axis([1939.75 1945.75 min(GermanyGDP)-10 max(GermanyGDP)+10])
title('GDP measured in billions of dollars');
%% Production SUBPLOT
subplot(6,2,[10,12]);
TANKPLOT = plot(0,0);
hold on
BPLANEPLOT = plot(0,0);
FPLANEPLOT = plot(0,0);
axis([1939.75 1945.75 500 26000])
legend('Tanks','Bomber Planes','Fighter Planes')
title('Production levels of different Vehicle Types')
%% RIFLE SUBPLOT
subplot(6,2,[6,8]);
RIFLEPLOT = plot(0,0);
title('Production levels of Rifles')
axis([1939.75 1945.75 min(GermanyRifles)-10 max(GermanyRifles)+10000])
%% Scatterplot Animation
PauseTime = 0.00001;
gif('Bombing.gif','frame',gcf)
%1939 Bombings
BombPlot(Bomb1939Sep,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1939Oct,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1939Nov,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1939Dec,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
%1940 Bombings
BombPlot(Bomb1940Jan,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1940Feb,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1940Mar,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1940Apr,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1940May,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1940Jun,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1940Jul,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1940Aug,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1940Sep,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1940Oct,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1940Nov,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1940Dec,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
%1941 Bombings
BombPlot(Bomb1941Jan,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1941Feb,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1941Mar,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1941Apr,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1941May,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1941Jun,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1941Jul,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1941Aug,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1941Sep,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1941Oct,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1941Nov,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1941Dec,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
%1942 Bombings
BombPlot(Bomb1942Jan,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1942Feb,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1942Mar,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1942Apr,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1942May,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1942Jun,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1942Jul,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1942Aug,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1942Sep,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1942Oct,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1942Nov,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1942Dec,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
%1943 Bombings
BombPlot(Bomb1943Jan,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1943Feb,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1943Mar,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1943Apr,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1943May,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1943Jun,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1943Jul,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1943Aug,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1943Sep,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1943Oct,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1943Nov,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1943Dec,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
%1944 Bombings
BombPlot(Bomb1944Jan,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1944Feb,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1944Mar,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1944Apr,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1944May,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1944Jun,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1944Jul,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1944Aug,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1944Sep,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1944Oct,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1944Nov,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1944Dec,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
%1945 Bombings
BombPlot(Bomb1945Jan,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1945Feb,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1945Mar,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1945Apr,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1945May,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1945Jun,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1945Jul,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1945Aug,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
BombPlot(Bomb1945Sep,ScatterPlot,PauseTime,GDPSUBPLOT,TANKPLOT,BPLANEPLOT,FPLANEPLOT,RIFLEPLOT,ProductionData);
%Final Plot
%BombPlot(BombData.LONGITUDE,BombData.LATITUDE,ScatterPlot,PauseTime);
