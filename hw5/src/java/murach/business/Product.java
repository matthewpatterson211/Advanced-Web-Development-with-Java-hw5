package murach.business;

import java.io.Serializable;
import java.text.NumberFormat;

public class Product implements Serializable
{
    private String code;
    private String description;
    private double price;
    private String cover;
    
    public Product()
    {
        code = "";
        description = "";
        price = 0;
        cover = "";
    }
    
    public void setCode(String code)
    {
        this.code = code;
    }
    
    public String getCode()
    { 
        return code; 
    }
    
    public void setDescription(String description)
    {
        this.description = description;
    }

    public String getDescription()
    { 
        return description; 
    }
    
    
    
    public void setPrice(double price)
    {
        this.price = price;
    }
    
    public double getPrice()
    { 
        return price; 
    }
    
    public void setCover(String cover)
    {
        this.cover = cover;
    }
    
    public String getCover()
    {
        return cover;
    }
    
    public String getPriceCurrencyFormat()
    {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(price);
    }    
}