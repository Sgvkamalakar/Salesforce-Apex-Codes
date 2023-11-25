public class GenericCar {
    public GenericCar(String color, String model, integer height, integer weight, integer Mileage){
        this.color=color;
        this.model=model;
        this.height=height;
        this.weight=weight;
        this.mileage=mileage;
    }
    public String color;
    public String model;
    public integer height,weight, mileage;
    
    @future
    public static void doStart(){
	system.debug('Starting the car ');
    }
    
    @future
    public static void doStop()
    {
	system.debug('Stop the car ');
	}
    
    @future
    public static void accelarate()
    {
	system.debug('Accelearte the car ');
    }
}