package com.redhat.demo;

public class HelloBean {

	private static String hello = "Hello OpenShift";

	public static String getHello() {
		return hello;
	}

	public static void setHello(String name) {
		HelloBean.hello = hello;
	}

}
