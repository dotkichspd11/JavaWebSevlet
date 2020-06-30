package Model;

public class sanpham {
  private String Name;
  private String About;
  private String Url;
  private int Price;
  private String Class;
  private int id;

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}



public sanpham(String name, String about, String url, int price,int id) {
	super();
	Name = name;
	About = about;
	Url = url;
	Price = price;
	
	this.id = id;
}


public sanpham( int id,String name, String about, String url, int price) {
	super();
	Name = name;
	About = about;
	Url = url;
	Price = price;
	this.id = id;
}
public sanpham(String name, String about, String url, int price) {
	super();
	this.Name = name;
	this.About = about;
	this.Url = url;
	this.Price = price;
}
public String getAbout() {
	return About;
}
public void setAbout(String about) {
	About = about;
}
public String getUrl() {
	return Url;
}
public void setUrl(String url) {
	Url = url;
}
public int getPrice() {
	return Price;
}
public void setPrice(int price) {
	Price = price;
}	

}
