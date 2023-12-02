//20200298 컴퓨터학과 장고은 Microsoft Edge
package jspbook.pr31;

public class Calculator {
	private int op1;
	private int op2;
	private String operator;
	
	public void setOp1(int op1) {this.op1 = op1;}
	public void setOp2(int op2) {this.op2 = op2;}
	public void setOperator(String operator) {
		switch(operator){
		case "0" : this.operator = "+"; break;
		case "1" : this.operator = "-"; break;
		case "2" : this.operator = "*"; break;
		default  : this.operator = "/"; break;
		}
	}
	
	public int getOp1() {return op1;}
	public int getOp2() {return op2;}
	public String getOperator() {return operator;}
	
	public int add(int a, int b) {return a + b;}
	public int sub(int a, int b) {return a - b;}
	public int mult(int a, int b) {return a * b;}
	public int div(int a, int b) {return a / b;}
	
	public int getcalc() {
		int result;
		switch(operator){
			case "+" : result = add(op1, op2); break;
			case "-" : result = sub(op1, op2); break;
			case "*" : result = mult(op1, op2); break;
			default  : result = div(op1, op2); break;
		}
		return result;
	}
}
