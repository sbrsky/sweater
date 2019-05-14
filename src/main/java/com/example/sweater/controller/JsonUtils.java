package com.example.sweater.controller;

import org.jsoup.Jsoup;

import java.io.IOException;

public class JsonUtils {
    private static String searchText;
    private static String apiRequestAdress;
    private static String  json;

    public static void main(String[] args) throws IOException {
        searchText = "Blade Runner";
        apiRequestAdress = "http://www.omdbapi.com/?s="+searchText+"&apikey=thewdb";
        getJson();
        System.out.println(apiRequestAdress);
        System.out.println(searchText);
        System.out.println(json);
    }
    public static void getJson() throws IOException {
        json = Jsoup.connect(apiRequestAdress).ignoreContentType(true).execute().body();


    }



}
