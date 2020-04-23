#include <cairo.h>
#include <gtk/gtk.h>
#include <iostream>

int zoom = 2;

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


static void do_drawing(cairo_t *);

static void draw_pixel(cairo_t *cr, int x, int y, int size)
{

  //set to white
  cairo_set_source_rgb(cr, 1, 1, 1);

  //create rectange and fill it
  cairo_rectangle(cr, x * size, y * size, size, size);
  cairo_fill(cr);
  
}

static void draw_char(cairo_t *cr, int x, int y, int zoom, int charToDraw[8][8])
{
  //8x8 char loop
  for(int i=0;i<8;i++)
  {    
    for(int j=0;j<8;j++)
    {
      //get actual coords of pixels to draw
      int realX = j + (x * 8);
      int realY = i + (y * 8);
      switch (charToDraw[i][j]) {
        case 1:   draw_pixel(cr, realX, realY, zoom);
                  break;
        case 0:   break;
        default:  std::cout << "nonstandard num in array" << std::endl;
      }
    }
  }
}

static gboolean on_draw_event(GtkWidget *widget, cairo_t *cr, gpointer user_data)
{      
  do_drawing(cr);

  return FALSE;
}

static void do_drawing(cairo_t *cr)
{
  
  cairo_set_source_rgb(cr, 0, 0, 0);
  cairo_paint(cr);

  draw_char(cr, 0, 0, zoom, charA);
  draw_char(cr, 1, 0, zoom, charB);
  draw_char(cr, 2, 0, zoom, charC);
  draw_char(cr, 3, 0, zoom, charD);
  draw_char(cr, 4, 0, zoom, charE);
}

//set up gtk, 
int main(int argc, char *argv[])
{
  GtkWidget *window;
  GtkWidget *darea;

  gtk_init(&argc, &argv);

  window = gtk_window_new(GTK_WINDOW_TOPLEVEL);

  darea = gtk_drawing_area_new();
  gtk_container_add(GTK_CONTAINER(window), darea);

  g_signal_connect(G_OBJECT(darea), "draw", 
      G_CALLBACK(on_draw_event), NULL); 
  g_signal_connect(window, "destroy",
      G_CALLBACK(gtk_main_quit), NULL);

  gtk_window_set_default_size(GTK_WINDOW(window), 320 * zoom, 200 * zoom); 
  gtk_window_set_title(GTK_WINDOW(window), "z80 screentest");
  gtk_window_set_resizable(GTK_WINDOW(window), FALSE);

  gtk_widget_show_all(window);

  gtk_main();

  

  return 0;
}
