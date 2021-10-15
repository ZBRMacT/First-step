avg=[00   00   00   00   00   00   00   00;
     00   82   36   48   12   98   77   00;
     00   22   77   46   81   74   85   00;
     00   58   94   55 	 15   65   27   00;
     00   88   54   32 	 27   80   36   00;
     00   66   48   86   81   23   24   00;
     00   22   77   46   81   74   97   00;
     00   00   00   00   00   00   00   00;
];
var=[];

figure
%subplot(1,2,1)
h=bar3(avg);

axis([-inf inf -inf inf 0 100])
for n=1:numel(h)
    cdata=get(h(n),'zdata');
    set(h(n),'cdata',cdata,'facecolor','interp')
end
ylabel('南北朝向')
set(gca,'yticklabel',{'0.0001','0.0005','0.001','0.005','0.01'});
xlabel('东西朝向')
set(gca,'xticklabel',{'0.05','0.1','0.15','0.2','0.25'});
zlabel('高度/m')

% subplot(1,2,2)
% h=bar3(avg);
% for n=1:numel(h)
%     cdata=get(h(n),'zdata');
%     cdata=repmat(max(cdata,[],2),1,4);
%     set(h(n),'cdata',cdata,'facecolor','flat')
% end 
