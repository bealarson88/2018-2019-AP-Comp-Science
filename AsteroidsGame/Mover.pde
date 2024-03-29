/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 All objects in this world that move must implemnt the Movalbe interface.
 */
interface Movable {
  //Return the x location of the Movable
  float getX();
  //Return the y location of the Movable
  float getY();
  //    Return the direction of the Movable in degrees.
  float getDirection();

  /*
   Return the speed of the Movable.
   The speed you use is a relative value and will
   feel different for different frame rates. For example,
   if frameRate is set to 48, then a speed of 1 would move 48 pixels 
   per second.
   */
  float getSpeed();

  /*
   Return the radius of influence. If you could draw a circle
   around your object, then what would this radius be.
   */
  float getRadius();

  /* 
   Sets the direction of the Movable
   */
  void setRadius(float newRadius);
  
  void setDirection(float newDirectionInDegrees); 
  //   Sets the speed of the Movable

  void setSpeed(float newSpeed);
  //   Update the internals of the instance
  void update(); 
  //    Display the isntance

  void show();

  /*
   Return true if the instance of Movable is "colliding with" 
   the movable referred to by object.  *Note* An object should not
   be able to collide with iteself.
   */
  boolean collidingWith(Movable m);
}
//END OF Movable Interface

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 Abstract base class Mover 
 */
abstract class Mover implements Movable {

  protected float x, y;
  protected float speed;
  protected float direction;
  protected int myColor;
  protected float radius;  

  /*
    Default Mover, not actually moving and directionless
   */
  Mover(float x, float y) {
    this(x, y, 0, 0, 0);
  }

  /*
    Mover constructor specifying x, y position along with its speed and
   direction (in degrees)
   */
  Mover(float x, float y, float speed, float direction, float radius) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.direction = direction;
    this.radius = radius;
    myColor = 255;
  }

  /*
    Most of your movable objects should follow this pattern.
   */
  void update() {

    //relocation of ship when off screen
    x = x + speed*(float)Math.cos(radians(direction));
    if (x > width)
      x = 0;
    if (x < 0)
      x = width;


    y = y + speed*(float)Math.sin(radians(direction));
    if (y>height)
      y = 0;
    if (y < 0)
      y = height;


    //x = x + speed*(float)Math.cos(radians(direction));
    //y = y + speed*(float)Math.sin(radians(direction));
  }



  /*
    Save this for your subclasses to override.
   but notice how it is tagged with abstract, meaning 
   it is incomplete. (It's like an I.O.U.)
   */
  abstract void show();


  /*
    TODO: Part 4: Implement collision detection
   */
  boolean collidingWith(Movable m) {
    if (this == m) {
      return false;
    }
    float distance = dist(x, y, m.getX(), m.getY()); 
    
    if ((radius + m.getRadius()) > distance) {
      return true;
    }
    return false;
  }

  float getX() {
    return x;
  }
  float getY() {
    return y;
  }
  float getDirection() {
    return direction;
  }
  float getSpeed() {
    return speed;
  }
  float getRadius() {
    return radius;
  }
  void setRadius(float newRadius){
    radius = newRadius;
  }
  void setDirection(float newDirection) {
    direction = newDirection;
  }
  void setSpeed(float newSpeed) {
    speed = newSpeed;
  }

  public String toString() {
    return "["+x+", "+y+"]";
  }
}
