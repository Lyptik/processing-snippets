void setup()
{
  fill(0);
  
  switch(platform)
  {
    case(MACOSX) :
      println("Your OS is : " + System.getProperty("os.name"));
      text(System.getProperty("os.name"),20,height/2);
      break;
    case(WINDOWS) :
      println("Your OS is : " + System.getProperty("os.name"));
      text(System.getProperty("os.name"),20,height/2);
      break;
    case(LINUX) :
      println("Your OS is : " + System.getProperty("os.name"));
      text(System.getProperty("os.name"),20,height/2);
      break;
    default :
      println("Could not find OS type !");
      text(System.getProperty("os.name"),20,height/2);
      break;
  }
}

