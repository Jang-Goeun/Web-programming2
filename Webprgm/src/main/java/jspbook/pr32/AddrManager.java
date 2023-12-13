//20200298 컴퓨터학과 장고은 Microsoft Edge
package jspbook.pr32;
import java.util.ArrayList;

public class AddrManager {
	private ArrayList<AddrBean> addrlist;
	private AddrBean list;
	private String sindex;
	private int rpp = 3;
	private int allpage;
	private int currentPage;
	private int startIndex;
	private int lastIndex;
	private int addrcount;
	
	public AddrManager() {
		addrlist = new ArrayList<AddrBean>();
		addrcount = addrlist.size();
		this.currentPage = 1;
		calculate();
	}
	public void setSindex(String sindex) {
		this.sindex = sindex;
		if(this.sindex == null) {
			this.currentPage = 1;
		}else {
			currentPage = Integer.parseInt(sindex);
		}
		calculate();
	}
	public void setList(AddrBean list) {this.list = list;}

	public AddrBean getList() { return list;}
	public int getAddrcount() { return addrlist.size();}
	public int getCurrentPage() {return currentPage;}
	public int getStartIndex() {return startIndex;}
	public int getLastIndex() {return lastIndex;}
	public int getAllpage() {return allpage;}
	public AddrBean getList(int i) { return addrlist.get(i);}
	public ArrayList<AddrBean> getAddrList(){ return addrlist;}
	
	public void add(AddrBean ad) {
        addrlist.add(ad);
        addrcount = addrlist.size();
        calculate();
    }
	
    private void calculate() {
        if (addrcount <= rpp) {
            allpage = 1;
        } else if (addrcount % rpp != 0) {
            allpage = addrcount / rpp + 1;
        } else {
            allpage = addrcount / rpp;
        }

        if (addrcount == 0) {
            startIndex = 0;
            lastIndex = 0;
        } else {
            startIndex = (currentPage - 1) * rpp;
            if (currentPage == getAllpage()) {
                lastIndex = addrcount - 1;
            } else {
                lastIndex = (currentPage - 1) * rpp + (rpp - 1);
            }
        }
    }
}
