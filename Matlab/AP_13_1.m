x = xlsread('AP1_coordinate,rssi.xlsx','(x,y,rssi)');
locationX = x(:,1);
locationY = x(:,2);
RSSValue = x(:,3);

figure1 = figure('InvertHardcopy','off','Name','APlocation(13,1) RSSI MAP',...
    'Color',[1 1 1]);

% ���� axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

%% CData �����ɫ
%
% %ʸ�� - �Ի�ͼ�е�ÿ�����ʹ�ò�ͬ����ɫ��
% �� CData ָ��Ϊ������ XData ��ͬ��ʸ����
% �����Է�ʽ��ʸ���е�ֵӳ�䵽��ǰ��ɫͼ�е���ɫ��
s3 = scatter3(locationX,locationY,RSSValue,'filled','CData',RSSValue);
s3.MarkerEdgeColor = 'flat'; % ��Ե��ɫ������CData
% s3.MarkerEdgeAlpha = 0.8; % ͸����
colormap(jet(10));
colorbar;
%%
% ���� xlabel
xlabel('X');

% ���� zlabel
zlabel('RSSI value');

% ���� ylabel
ylabel('Y');

% ȡ�������е�ע���Ա���������� X ��Χ
% xlim(axes1,[0 25]);
% ȡ�������е�ע���Ա���������� Y ��Χ
% ylim(axes1,[0 18]);
% ȡ�������е�ע���Ա���������� Z ��Χ
% zlim(axes1,[-80 -20]);

grid(axes1,'on');
