int gridSize = 30;          
float spacing = 60.0;       
float deviation = 0.1;      
float tileSize;             
int lineSpacing = 40;       

void setup() {
    size(900, 900, P3D);
    tileSize = width / gridSize;  
    noStroke();
}

void draw() {
    background(0, 0, 139);  
    
   
    stroke(255);  
    for (int i = 0; i < width; i += lineSpacing) {
        line(i, 0, i, height);  
        line(0, i, width, i);   
    }
    
    fill(0);
    lights(); 

   
    translate(width / 2, height / 2);  
    rotateX(radians(frameCount * 0.2)); 
    rotateY(radians(frameCount * 0.2));  

    for (int x = 0; x < gridSize; x++) {
        for (int y = 0; y < gridSize; y++) {
            float offsetX = x * spacing;
            float offsetY = y * spacing;
            
            offsetX += random(-deviation, deviation);
            offsetY += random(-deviation, deviation);
            
          
            float z = random(-100, 100);
            
            pushMatrix();
            
            
            translate(offsetX - width / 2, offsetY - height / 2, z);  
            rotateX(radians(frameCount * 1));  
            rotateY(radians(frameCount * 1));  

            float size = tileSize * 0.1;  
            sphere(size);    
            popMatrix();
        }
    }
}
