public void setup()
{
	size(600,600);
	background(0);
}
public void draw()
{
	sierpinski(-50,600,600);
	sierpinski(-100,600,600);
	sierpinski(0,600,600);
	sierpinski(50,600,600);
	sierpinski(100,600,600);
}

public void sierpinski(int x, int y, int len) 
{
	noFill();
	stroke(90,250,100);
	if (len<=20){

		triangle(x,y,x+len,y,x+len/2,y-len);
	}
	else{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);

	}
}