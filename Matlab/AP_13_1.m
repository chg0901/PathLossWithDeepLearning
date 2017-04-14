x = xlsread('AP1_coordinate,rssi.xlsx','(x,y,rssi)');
locationX = x(:,1);
locationY = x(:,2);
RSSValue = x(:,3);

figure1 = figure('InvertHardcopy','off','Name','APlocation(13,1) RSSI MAP',...
    'Color',[1 1 1]);

% 创建 axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

%% CData 标记颜色
%
% %矢量 - 对绘图中的每个标记使用不同的颜色。
% 将 CData 指定为长度与 XData 相同的矢量。
% 以线性方式将矢量中的值映射到当前颜色图中的颜色。
s3 = scatter3(locationX,locationY,RSSValue,'filled','CData',RSSValue);
s3.MarkerEdgeColor = 'flat'; % 边缘颜色，跟随CData
% s3.MarkerEdgeAlpha = 0.8; % 透明度
colormap(jet(10));
colorbar;
%%
% 创建 xlabel
xlabel('X');

% 创建 zlabel
zlabel('RSSI value');

% 创建 ylabel
ylabel('Y');

% 取消以下行的注释以保留坐标轴的 X 范围
% xlim(axes1,[0 25]);
% 取消以下行的注释以保留坐标轴的 Y 范围
% ylim(axes1,[0 18]);
% 取消以下行的注释以保留坐标轴的 Z 范围
% zlim(axes1,[-80 -20]);

grid(axes1,'on');
