var cur_view = 0;
var xpos = view_wport[cur_view]/2 + view_xport[cur_view];
var ypos = view_hport[cur_view]/2 + view_yport[cur_view] - offset;

draw_set_halign( fa_center );
draw_set_valign( fa_middle );
draw_text( xpos , ypos , text_draw );