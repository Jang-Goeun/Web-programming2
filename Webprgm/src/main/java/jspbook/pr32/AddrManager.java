//20200298 컴퓨터학과 장고은 Microsoft Edge
package jspbook.pr32;
import java.util.ArrayList;

public class AddrManager {
	private ArrayList<AddrBean> addrlist;
	
	public AddrManager() {addrlist = new ArrayList<AddrBean>();}
	public ArrayList<AddrBean> getAddrList(){ return addrlist;}
	public void add(AddrBean ad) {addrlist.add(ad);}
}
