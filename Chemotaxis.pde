Bacteria [] colony;   
void setup()    
{      
	size(500,500);
	colony = new Bacteria [12];
	for(int i = 0; i < colony.length; i++)
	{
		colony [i] = new Bacteria();
	}
}
void draw()    
{
	background(0); 
	for (int i = 0; i < colony.length; i++)
	{
		colony[i].walk();
		colony[i].show();
	}    	    
}   
class Bacteria     
{ 
	int myX, myY, myColor;
	Bacteria()
	{
		myX = (int)(Math.random()*501);
		myY = (int)(Math.random()*501);
	}
	void walk()
	{
		myX = myX + (int)(Math.random()*5)-2;
		myY = myY + (int)(Math.random()*5)-2;
	}
	void show()
	{
		fill( (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		ellipse(myX, myY, 20,20);
	}       	    
} 

