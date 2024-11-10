package com.ognice.controller.common;

import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.usermodel.Range;

import java.io.*;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Fooker on 2019/3/17.
 */
public class WriteWord {

    /**
     * 读取word模板并替换变量
     *  
     *
     * @param srcPath
     * @param map
     * @return
     */
    public HWPFDocument replaceDoc(String srcPath, Map<String, String> map) {
        try {
// 读取word模板
            FileInputStream fis = new FileInputStream(new File(srcPath));
            HWPFDocument doc = new HWPFDocument(fis);
// 读取word文本内容
            Range bodyRange = doc.getRange();
// 替换文本内容
            for (Map.Entry<String, String> entry : map.entrySet()) {
                bodyRange.replaceText("${" + entry.getKey() + "}",
                        entry.getValue());
            }
            return doc;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void main(String[] args) {


// 创建map，修改姓名
        Map<String, String> map = new HashMap<String, String>();
//
        map.put("projectname", "李四");


        HWPFDocument doc = new WriteWord().replaceDoc(
                "E:\\job\\school\\schoolproject\\WebContent\\files\\projectapply.doc", map);
        try {
            FileOutputStream out = new FileOutputStream("E:\\job\\school\\schoolproject\\WebContent\\files\\projectapply2.doc");
            doc.write(out);
            out.close();


        } catch (FileNotFoundException e) {
// TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
// TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

}


