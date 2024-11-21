
class Demo{
	
	String msg;
	Demo(){
		System.out.println("Default Constructor - Initialized object");
	}
	
	Demo(String msg){
		this.msg= msg;
		System.out.println(msg);
		System.out.println("From Parameterized Constructor");
	}
	
	Demo(Demo d){
		this.msg = d.msg;
		System.out.println(this.msg);
		System.out.println("From Copy Constructor");
	}
}


public class ExamplesConst {

	public static void main(String[] args) {
		
//		creating object with different constructors
		
		Demo d1 = new Demo();
		Demo d2 = new Demo("Hello Everyone");
		Demo d3 = new Demo(d2);

	}

}
