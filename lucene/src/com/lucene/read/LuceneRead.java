package com.lucene.read;

import org.apache.lucene.document.Document;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.Term;
import org.apache.lucene.search.*;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;

import java.io.File;
import java.nio.file.Path;

public class LuceneRead {
    public static void main(String[] args) throws Exception{
        Path path = new File("D:\\lucene\\index").toPath();
//    创建directory对象 指定读取索引的位置
        Directory directory = FSDirectory.open(path);
//        基于directory创建索引读 indexreader
        IndexReader indexReader = DirectoryReader.open(directory);
//        基于indexReader创建索引查 indexsearch
        IndexSearcher indexSearcher = new IndexSearcher(indexReader);
//        创建查询
        Query query = new TermQuery(new Term("name","spring"));
//        查询
        TopDocs topDocs = indexSearcher.search(query,10);
        System.out.println("查询结果总条数----》"+topDocs.totalHits);

        ScoreDoc[] scoreDocs = topDocs.scoreDocs;
//        遍历查询结果
        for (ScoreDoc scoreDoc : scoreDocs) {
            Document document = indexSearcher.doc(scoreDoc.doc);
            System.out.println("文件名--》"+document.get("name"));
            System.out.println("文件路径--》"+document.get("path"));
            System.out.println("文件内容--》"+document.get("Content"));
            System.out.println("文件大小--》"+document.get("size"));
            System.out.println("-----------------------------------");
        }

        indexReader.close();
    }

}
