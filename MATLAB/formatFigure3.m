%% FORMAT 3D FIGURE: GIVES FIGURE LATEX FORMATTING
% Author: Tara Bartlett 450198331
% 
% Input: handles of figure, xlabel, ylabel, zlabel, (and legend)
% Output: No output.

function formatFigure3(figHandle,XLABEL,YLABEL,ZLABEL,varargin)
% move to the right figure
figure(figHandle);

% Put the grid on
grid on;
grid minor;
fontsize = 16;
xHandle = xlabel(XLABEL);
yHandle = ylabel(YLABEL);
zHandle = zlabel(ZLABEL);
% Set all fonts to latex at fontsize 20 and thicker grid lines
set(xHandle,'Interpreter','Latex','FontSize',fontsize);
set(yHandle,'Interpreter','Latex','FontSize',fontsize);
set(zHandle,'Interpreter','Latex','FontSize',fontsize);
set(gca,'TickLabelInterpreter','latex','FontSize',20,'LineWidth',1.5);

if ~isempty(varargin)
    set(varargin{1},'Interpreter','latex','Location','best','FontSize',fontsize);
end 

end