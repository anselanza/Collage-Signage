
class Letter {
  String myChar;
  ArrayList img;
  
  
  Letter (String setChar) {
    myChar = setChar;
    img = new ArrayList();
    
    String path = sketchPath()+"/data/"; 
      File dir = new File(path);
      File[] files = dir.listFiles();
    
      int numFiles = files.length;
      //println(numFiles);
    
      for (File f : files) {
        //println(f.getName());
        if (f.getName().startsWith(myChar)) {
          img.add(loadImage(f.toString())); 
        }
      }
      
      println(myChar + ": " + img.size());
    
  }
  
  void draw(int x, int y, int w) {
    int pick = (int)random(0, img.size());
    PImage image = (PImage)img.get(pick);
    image(image, x, y, w, w);
  }
}