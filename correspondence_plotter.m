function [] = correspondence_plotter(pA, pB, pA_tag, pB_tag, figure_num)

    figure(figure_num), imshow(pA_tag + pB_tag), set(gcf, 'name', 'Point Corr')
    hold on
    plot([pA.x  ], [pA.y  ], 'Marker', 'd', 'MarkerSize', 15, 'Color', 'magenta', 'LineStyle', 'none', 'LineWidth', 1)
    hold on
    plot([pB.x  ], [pB.y  ], 'Marker', 'd', 'MarkerSize', 15, 'Color', 'cyan', 'LineStyle', 'none', 'LineWidth', 1)









end