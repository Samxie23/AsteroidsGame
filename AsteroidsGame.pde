Spaceship ship;
Star [] stars = new Star[200];
ArrayList <Asteroid> yes = new ArrayList <Asteroid>();
public void setup() 
{
  size(500,500);
  ship = new Spaceship();
  for(int i = 0;i<stars.length;i++){
  	stars[i] = new Star();
  }
  for(int i = 0;i<25;i++){
  	yes.add(new Asteroid());
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
 for(int i = 0; i < yes.size();i++){
		yes.get(i).show();
		yes.get(i).move();
		if(dist(ship.getX(),ship.getY(),yes.get(i).getX(),yes.get(i).getY()) < 10){
		yes.remove(i);
		
	}
	}
	
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
	if(key == 'f'){
		ship.setX((int)(Math.random()*500));
		ship.setY((int)(Math.random()*500));
		ship.setDirectionX((double)(0.0));
		ship.setDirectionY((double)(0.0));
		ship.setPointDirection((int)(Math.random()*360));
	}
}


