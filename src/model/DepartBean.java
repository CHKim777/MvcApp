package model;

import java.util.ArrayList;

public class DepartBean {
	public ArrayList getAdvice(String depart){
		ArrayList advice = new ArrayList();
		if(depart.equals("kor")){
			advice.add("1.��� ���ؾ� �Ѵ�.");
			advice.add("2.��� ����ؾ� �Ѵ�.");
		}
		else if(depart.equals("eng")){
			advice.add("1.��� ���ؾ� �Ѵ�.");
			advice.add("2.��� ����ؾ� �Ѵ�.");
		}
		else{
			advice.add("1.��ǻ�͸� ���ؾ� �Ѵ�.");
			advice.add("2.��ǻ�͸� ����ؾ� �Ѵ�.");
		}
		return advice;
	}
}
