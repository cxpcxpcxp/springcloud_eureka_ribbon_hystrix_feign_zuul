package com.lucene.write;

import org.apache.commons.io.FileUtils;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;

import java.io.File;
import java.nio.file.Path;

public class LuceneWrite {
//    主函数
public static void main(String[] args) throws Exception{
//    将两个文件位置找到
    Path wpath = new File("D:\\lucene\\index").toPath();
    File rfile = new File("D:\\lucene\\doc");
//    创建一个directory对象 用于存储写索引的位置信息
    Directory directory = FSDirectory.open(wpath);
//    基于directory创建indexwrite对象
    IndexWriter indexWriter = new IndexWriter(directory,new IndexWriterConfig());

//    对磁盘中的文件进行遍历
    File[] rfiles = rfile.listFiles();
    for (File file : rfiles) {
//        一次对文件的属性进行配置
        String name = file.getName();//文件名
        String path = file.getPath();//文件路径
        String Content = FileUtils.readFileToString(file, "utf-8");//文件内容
        long size = FileUtils.sizeOf(file);//文件大小
//创建域
        Field fieldName = new TextField("name",name,Field.Store.YES);
        Field fieldPath = new TextField("path",path,Field.Store.YES);
        Field fieldContent = new TextField("Content",Content,Field.Store.YES);
        Field fieldSize = new TextField("size",size+"",Field.Store.YES);
//        向文档对象中添加域
        Document document = new Document();
        document.add(fieldName);
        document.add(fieldPath);
        document.add(fieldContent);
        document.add(fieldSize);

//        将文档对象写入索引库中
        indexWriter.addDocument(document);

    }
    //        关闭indexWrite
    indexWriter.close();
}
}
