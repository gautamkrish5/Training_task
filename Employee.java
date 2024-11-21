
interface Details{
	void personalDetails();
	
	default void generalDetails() {
		String company_name = "Aspire Systems";
		System.out.println("Company Name : "+company_name);
		System.out.println("------------------------------------");
	}
	
	static void permanentDetails() {
		System.out.println("Company Location : Chennai");
	}
}

public class Employee implements Details {
	
	@Override
	public void personalDetails() {
		String name ="Gautam";
		String role = "Testing";
		System.out.println("Personal Details");
		System.out.println("Name : "+name);
		System.out.println("Role : "+role);
	}
	
	@Override
	public void generalDetails() {
		String company_name = "Welcome to Aspire Systems";
		System.out.println(company_name);
		System.out.println("------------------------------------");
	}
	
	public static void main(String args[]) {
		
		Employee employee = new Employee();
		
		System.out.println("Default method inside interface");
		employee.generalDetails();
		
		System.out.println("Overide method of Interface");
		employee.personalDetails();
		
	}

	

}
