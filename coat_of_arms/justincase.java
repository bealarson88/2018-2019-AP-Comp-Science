/*
  
  noStroke();
  fill(#C15106);
  ellipse(position.x+ 50, position.y-500, r*3, r*3);
  position.add(velocity);
  
  noStroke();
  fill(#B7290D);
  ellipse(position.x - 100, position.y-900, r*5, r*3);
  position.add(velocity);
  
  noStroke();
  fill(#6C1C08);
  ellipse(position.x - 300, position.y-950, r*3, r*3);
  position.add(velocity);

  noStroke();
  fill(#DE6012);
  ellipse(position.x + 300, position.y-690, r*6, r*4);
  position.add(velocity);
  
    noStroke();
  fill(#C66422);
  ellipse(position.x + 100, position.y - 700, r * 10, r * 5);
  position.add(velocity);
  trail.add(position);
  trailLength = trail.size() - 2;
  println(trailLength);
  
   position.add(velocity);

  
  PVector incidence = PVector.mult(velocity, -1);
  incidence.normalize();





   position = new PVector(mouseX, mouseY);
  trail.add(position);
  
  trailLength = trail.size() - 1;
  println(trailLength);
  
  for (int i = 0; i < trailLength; i++){
    PVector currentTrail = trail.get(i);
    PVector previousTrail = trail.get(i + 1);
    
    stroke(0, 255*i/trailLength);
    line(
      currentTrail.x, currentTrail.y,
      previousTrail.x, previousTrail.y
    );
  }
  
  ellipse(position.x*1.75, position.y-850, r*10, r*10);
  noStroke();
  fill(#C66422);

  if (trailLength >= trailSize){
  trail.remove(0);
  }
  
*/
