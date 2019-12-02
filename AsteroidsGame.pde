Spaceship ship;
Star [] stars = new Star[200];
public void setup() 
{
  size(500,500);
  ship = new Spaceship();
  for(int i = 0;i<stars.length;i++){
  	stars[i] = new Star();
  }

}
public void draw() 
{
 background(0);
 for(int i = 0; i < stars.length; i++){
 	stars[i].show();
 }
 ship.show();
 ship.move();
}
public void keyPressed(){
	if(key == 'w'){
		ship.accelerate(0.3);
	}
	if(key == 'a'){
		ship.turn(-10);
	}
	if(key == 's'){
		ship.accelerate(-0.3);
	}
	if(key == 'd'){
		ship.turn(10);
	}
}

