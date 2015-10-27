package com.jetty.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by mee on 15-10-27.
 */

public class GetImageAction extends ActionSupport{
    private String type;
    private String name;
    private InputStream imageStream;
    private final String IMG="IMG";
    private final String MP4="MP4";

    public void setType(String type)
    {
        this.type=type;
    }
    public void setName(String name)
    {
        this.name=name;
    }
    public InputStream getImageStream()
    {
        return imageStream;
    }

    public String execute() throws Exception{
        if(type.equals("get")){
            String path=ServletActionContext.getServletContext().getRealPath("image");
            path=path+"/"+name;
            System.out.println(path);
            //filename = "myimage.jpg";
            String prefix=path.substring(path.lastIndexOf(".")+1);
            if(prefix.equals("jpg")){
                File img = new File(path);
                imageStream = new FileInputStream(img);
                return IMG;
            }
            else if(prefix.equals("mp4")){
                File mp4=new File(path);
                imageStream=new FileInputStream(mp4);
                return MP4;
            }
        }
        return SUCCESS;
    }
}
