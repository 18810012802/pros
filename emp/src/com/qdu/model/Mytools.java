package com.qdu.model;

import java.util.UUID;

public class Mytools {
public String getNewFileName(String fileName)
{
	int beginIndex=fileName.lastIndexOf(".");
	String newFileName=UUID.randomUUID().toString()+fileName.substring(beginIndex,fileName.length());
	return newFileName;
}
}
