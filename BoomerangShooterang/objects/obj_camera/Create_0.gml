/// @description Init Camera

view_width = 1920/6;
view_height = 1080/6;
window_scale = 3;

// set the window size
window_set_size(view_width * window_scale, view_height * window_scale);
alarm[0] = 1;

// resize the game window to the view size
surface_resize(application_surface, view_width * window_scale, view_height * window_scale);

// set up a macro for the view
#macro view view_camera[0]

// set the view size for the screen
camera_set_view_size(view, view_width, view_height);