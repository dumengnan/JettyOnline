package com.jetty.action;

/**
 * Created by mee on 15-12-14.
 */
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import sun.misc.BASE64Encoder;

public class BinaryAction extends ActionSupport{

    private String username;

    //注意，file并不是指前端jsp上传过来的文件本身，而是文件上传过来存放在临时文件夹下面的文件
    private File file;
    //提交过来的file的名字
    private String fileFileName;
    //提交过来的file的MIME类型
    private String fileContentType;

    //接口所需参数
    private String opt;
    private String type;
    private String name;

    private InputStream inputStream;
    private final String ADD="ADD";
    private final String GET="GET";
    private Map<String,Object> dataMap;

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    public File getFile()
    {
        return file;
    }

    public void setFile(File file)
    {
        this.file = file;
    }

    public String getFileFileName()
    {
        return fileFileName;
    }

    public void setFileFileName(String fileFileName)
    {
        this.fileFileName = fileFileName;
    }

    public String getFileContentType()
    {
        String mimeType = ServletActionContext.getServletContext().getMimeType(name);
        return mimeType;
    }

    public void setFileContentType(String fileContentType)
    {
        this.fileContentType = fileContentType;
    }

    public void setOpt(String opt)
    {
        this.opt=opt;
    }

    public void setType(String type)
    {
        this.type=type;
    }

    public void setName(String name)
    {
        this.name=name;
    }

    public String getName()
    {
        String downFileName = name;
        try {
            downFileName = new String(downFileName.getBytes(), "ISO8859-1");
        }catch(UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return downFileName;
    }

    public InputStream getInputStream()
    {
        return inputStream;
    }

    public Map<String, Object> getDataMap() {
        return dataMap;
    }

    @Override
    public String execute() throws Exception
    {
        if(opt.equals("add"))
        {
            String root = ServletActionContext.getServletContext().getRealPath("/upload");
            InputStream is = new FileInputStream(file);
            OutputStream os = new FileOutputStream(new File(root, fileFileName));
            System.out.println("fileFileName: " + fileFileName);
            // 因为file是存放在临时文件夹的文件，我们可以将其文件名和文件路径打印出来，看和之前的fileFileName是否相同
            //System.out.println("file: " + file.getName());
            //System.out.println("file: " + file.getPath());
            byte[] buffer = new byte[1024];
            int length = 0;
            while(-1 != (length = is.read(buffer, 0, buffer.length)))
            {
                os.write(buffer);
            }
            os.close();
            is.close();
            dataMap=new HashMap<String, Object>();
            dataMap.put("name",fileFileName);
            return ADD;
        }

        if(opt.equals("get"))
        {
            String root = ServletActionContext.getServletContext().getRealPath("/upload");
            String path=root+"/"+name;
            //System.out.println(path);
            File files=new File(path);
            //inputStream = new FileInputStream(files);

            InputStream in = null;
            byte[] data = null;
            //读取资源的字节数组
            try
            {
                in = new FileInputStream(files);
                data = new byte[in.available()];
                in.read(data);
                in.close();
            }
            catch (IOException e)
            {
                e.printStackTrace();
            }
            //对字节数组Base64编码
            BASE64Encoder encoder = new BASE64Encoder();
            //System.out.println(encoder.encode(data));//返回Base64编码过的字节数组字符串
            inputStream = new ByteArrayInputStream(encoder.encode(data) .getBytes());
            return GET;
        }

        return SUCCESS;
    }
}
