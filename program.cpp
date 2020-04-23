#include <iostream>
#include <string>

#include <gtk/gtk.h>

int charA[8][8] = {
  {0,0,0,0,0,0,0,0},
  {0,1,1,1,1,1,0,0},
  {0,1,0,0,0,1,0,0},
  {0,1,1,1,1,1,0,0},
  {0,1,0,0,0,1,0,0},
  {0,1,0,0,0,1,0,0},
  {0,1,0,0,0,1,0,0},
  {0,0,0,0,0,0,0,0},
};

int charB[8][8] = {
  {0,0,0,0,0,0,0,0},
  {0,1,1,1,1,0,0,0},
  {0,1,0,0,0,1,0,0},
  {0,1,1,1,1,0,0,0},
  {0,1,0,0,0,1,0,0},
  {0,1,0,0,0,1,0,0},
  {0,1,1,1,1,0,0,0},
  {0,0,0,0,0,0,0,0},
};

int charC[8][8] = {
  {0,0,0,0,0,0,0,0},
  {0,0,1,1,1,1,0,0},
  {0,1,0,0,0,0,0,0},
  {0,1,0,0,0,0,0,0},
  {0,1,0,0,0,0,0,0},
  {0,1,0,0,0,0,0,0},
  {0,0,1,1,1,1,0,0},
  {0,0,0,0,0,0,0,0},
};

int charD[8][8] = {
  {0,0,0,0,0,0,0,0},
  {0,1,1,1,1,0,0,0},
  {0,1,0,0,0,1,0,0},
  {0,1,0,0,0,1,0,0},
  {0,1,0,0,0,1,0,0},
  {0,1,0,0,0,1,0,0},
  {0,1,1,1,1,0,0,0},
  {0,0,0,0,0,0,0,0},
};

int charE[8][8] = {
  {0,0,0,0,0,0,0,0},
  {0,1,1,1,1,1,0,0},
  {0,1,0,0,0,0,0,0},
  {0,1,1,1,1,0,0,0},
  {0,1,0,0,0,0,0,0},
  {0,1,0,0,0,0,0,0},
  {0,1,1,1,1,1,0,0},
  {0,0,0,0,0,0,0,0},
};


/* Surface to store current scribbles */
static cairo_surface_t *surface = NULL;

static void clear_surface(void)
{
  cairo_t *cr;

  cr = cairo_create(surface);
  
  //set to black
  cairo_set_source_rgb(cr, 0, 0, 0);
  cairo_paint(cr);

  cairo_destroy(cr);
}

/* Create a new surface of the appropriate size to store our scribbles */
static gboolean configure_event_cb(GtkWidget         *widget,
                                   GdkEventConfigure *event,
                                   gpointer           data)
{
  if(surface)
  {
    cairo_surface_destroy(surface);
}

  surface = gdk_window_create_similar_surface(gtk_widget_get_window(widget),
                                               CAIRO_CONTENT_COLOR,
                                               gtk_widget_get_allocated_width(widget),
                                               gtk_widget_get_allocated_height(widget));

  /* Initialize the surface to white */
  clear_surface();

  /* We've handled the configure event, no need for further processing. */
  return TRUE;
}

/* Redraw the screen from the surface. Note that the ::draw
 * signal receives a ready-to-be-used cairo_t that is already
 * clipped to only draw the exposed areas of the widget
 */
static gboolean
draw_cb(GtkWidget *widget,
         cairo_t   *cr,
         gpointer   data)
{
  cairo_set_source_surface(cr, surface, 0, 0);
  cairo_paint(cr);

  return FALSE;
}

/* Draw a rectangle on the surface at the given position */
static void
draw_pixel(GtkWidget *widget,
            gdouble    x,
            gdouble    y,
            int        size)
{
  cairo_t *cr;

  /* Paint to the surface, where we store our state */
  cr = cairo_create(surface);

  cairo_set_source_rgb(cr, 1, 1, 1);

  cairo_rectangle(cr, x * size, y * size, size, size);
  cairo_fill(cr);

  cairo_destroy(cr);

  /* Now invalidate the affected region of the drawing area. */
  gtk_widget_queue_draw_area(widget, x, y, size, size);
}

static void
draw_char(GtkWidget *drawing_area, int zoom, int x, int y, int chara[8][8])
{
  for(int i=0;i<8;i++){    
    for(int j=0;j<8;j++){
      int realX = j + (x * 8);
      int realY = i + (y * 8);
      switch (chara[i][j]) {
        case 1:   draw_pixel(drawing_area, realX, realY, zoom);
                  break;
        case 0:   break;
        default:  std::cout << "nonstandard num in array" << std::endl;
      }
      
    }//end of j    
    
   }//end of i    
}

static void
close_window(void)
{
  if(surface)
    cairo_surface_destroy(surface);
}

static void
zoom1(GtkWidget *drawing_area)
{
  int zoom = 1;
  gtk_widget_set_size_request(drawing_area, 320 * zoom, 200 * zoom);
  gtk_widget_queue_resize(drawing_area);
}

static void
zoom2(GtkWidget *drawing_area)
{
  int zoom = 2;
  gtk_widget_set_size_request(drawing_area, 320 * zoom, 200 * zoom);
  gtk_widget_queue_resize(drawing_area);
}

static void
zoom3(GtkWidget *drawing_area)
{
  int zoom = 3;
  gtk_widget_set_size_request(drawing_area, 320 * zoom, 200 * zoom);
  gtk_widget_queue_resize(drawing_area);
}

static void
zoom4(GtkWidget *drawing_area)
{
  int zoom = 4;
  gtk_widget_set_size_request(drawing_area, 320 * zoom, 200 * zoom);
  gtk_widget_queue_resize(drawing_area);
  
}



static void
activate(GtkApplication *app,
          gpointer        user_data)
{
  GtkWidget *window;
  GtkWidget *box;
  GtkWidget *frame;
  GtkWidget *drawing_area;

  //define menubar things
  GtkWidget *menubar;
  GtkWidget *fileMenu;
  GtkWidget *fileMi;
  GtkWidget *quitMi;
  GtkWidget *viewMenu;
  GtkWidget *viewMi;
  GtkWidget *zoomMi;
  GtkWidget *zoomMenu;
  GtkWidget *zoom1Mi;
  GtkWidget *zoom2Mi;
  GtkWidget *zoom3Mi;
  GtkWidget *zoom4Mi;


  int zoom = 2;

  window = gtk_application_window_new(app);
  gtk_window_set_title(GTK_WINDOW(window), "z80 screen test");
  gtk_window_set_resizable(GTK_WINDOW(window), FALSE);

  g_signal_connect(window, "destroy", G_CALLBACK(close_window), NULL);


  gtk_container_set_border_width(GTK_CONTAINER(window), 0);

  box = gtk_box_new(GTK_ORIENTATION_VERTICAL, 0);
  gtk_container_add(GTK_CONTAINER(window), box);

  
  menubar = gtk_menu_bar_new();
  fileMenu = gtk_menu_new();
  viewMenu = gtk_menu_new();
  zoomMenu = gtk_menu_new();

  fileMi = gtk_menu_item_new_with_label("File");
  quitMi = gtk_menu_item_new_with_label("Quit");

  viewMi = gtk_menu_item_new_with_label("View");
  zoomMi = gtk_menu_item_new_with_label("Zoom");

  zoom1Mi = gtk_menu_item_new_with_label("100%");
  zoom2Mi = gtk_menu_item_new_with_label("200%");
  zoom3Mi = gtk_menu_item_new_with_label("300%");
  zoom4Mi = gtk_menu_item_new_with_label("400%");

  gtk_menu_item_set_submenu(GTK_MENU_ITEM(fileMi), fileMenu);
  gtk_menu_shell_append(GTK_MENU_SHELL(fileMenu), quitMi);
  gtk_menu_shell_append(GTK_MENU_SHELL(menubar), fileMi);

  gtk_menu_item_set_submenu(GTK_MENU_ITEM(viewMi), viewMenu);
  gtk_menu_shell_append(GTK_MENU_SHELL(viewMenu), zoomMi);
  gtk_menu_shell_append(GTK_MENU_SHELL(menubar), viewMi);

  gtk_menu_item_set_submenu(GTK_MENU_ITEM(zoomMi), zoomMenu);
  gtk_menu_shell_append(GTK_MENU_SHELL(zoomMenu), zoom1Mi);
  gtk_menu_shell_append(GTK_MENU_SHELL(zoomMenu), zoom2Mi);
  gtk_menu_shell_append(GTK_MENU_SHELL(zoomMenu), zoom3Mi);
  gtk_menu_shell_append(GTK_MENU_SHELL(zoomMenu), zoom4Mi);

  gtk_box_pack_start(GTK_BOX(box), menubar, FALSE, FALSE, 0);

  g_signal_connect_swapped (quitMi, "activate",
                            G_CALLBACK (gtk_widget_destroy),
                            window);



  drawing_area = gtk_drawing_area_new();
  /* set a minimum size */
  gtk_widget_set_size_request(drawing_area, 320 * zoom, 200 * zoom);

  gtk_box_pack_start(GTK_BOX(box), drawing_area, FALSE, FALSE, 0);

  /* Signals used to handle the backing surface */
  g_signal_connect(drawing_area, "draw",
                    G_CALLBACK(draw_cb), NULL);
  g_signal_connect(drawing_area,"configure-event",
                    G_CALLBACK(configure_event_cb), NULL);


  
  g_signal_connect_swapped (zoom1Mi, "activate",
                            G_CALLBACK (zoom1),
                            drawing_area);
  g_signal_connect_swapped (zoom2Mi, "activate",
                            G_CALLBACK (zoom2),
                            drawing_area);
  g_signal_connect_swapped (zoom3Mi, "activate",
                            G_CALLBACK (zoom3),
                            drawing_area);
  g_signal_connect_swapped (zoom4Mi, "activate",
                            G_CALLBACK (zoom4),
                            drawing_area);


 
  gtk_widget_show_all(window);

/*
  draw_char(drawing_area, zoom, 0, 0,charA);
  draw_char(drawing_area, zoom, 1, 0,charB);
  draw_char(drawing_area, zoom, 2, 0,charC);
  draw_char(drawing_area, zoom, 3, 0,charD);
  draw_char(drawing_area, zoom, 4, 0,charE);
*/

  for(int i=0;i<25;i++){    
    for(int j=0;j<40;j++){

      int randNum = (rand() % 5);

      switch(randNum) {
        case 0:  draw_char(drawing_area, zoom, j, i,charA); break;
        case 1:  draw_char(drawing_area, zoom, j, i,charB); break;
        case 2:  draw_char(drawing_area, zoom, j, i,charC); break;
        case 3:  draw_char(drawing_area, zoom, j, i,charD); break;
        case 4:  draw_char(drawing_area, zoom, j, i,charE); break;
        default: std::cout << "invalid num in rand" << std::endl; break;
      } 

      //draw_char(drawing_area, zoom, j, i,charA);
      
      
    }//end of j    
    
   }//end of i  
  

  /*
std::cout << "got here" << std::endl;
   zoom = 4;
  gtk_widget_set_size_request(drawing_area, 320 * zoom, 200 * zoom);
  gtk_widget_queue_resize(drawing_area);

  draw_pixel(drawing_area, 0, 0, zoom);
  */
}


int
main(int    argc,
      char **argv)
{
  GtkApplication *app;
  int status;

  app = gtk_application_new("com.github.amberisvibin.z80screentest", G_APPLICATION_FLAGS_NONE);
  g_signal_connect(app, "activate", G_CALLBACK(activate), NULL);
  status = g_application_run(G_APPLICATION(app), argc, argv);
  g_object_unref(app);

  return status;
}
