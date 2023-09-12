import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: constant_identifier_names

const CLIENT_ID = "DeSo5knFM4Hx_D0FfSOe";
const CLIENT_SECRET = "gP16XgUpxF";
const NAVER_URL = "https://openapi.naver.com/v1/search/movie.json";

class NaverAPI {
  void loadMovie() async {
    Map<String, String> headers = {
      "X-Naver-Client-Id": CLIENT_ID,
      "X-Naver-Client-Secret": CLIENT_SECRET
    };

    String query = "공공의 적";
    String getMovieURL = "$NAVER_URL?query=$query";
    debugPrint("요청값 $getMovieURL");

    dynamic response;

    // Uri.parse()
    // http 프로토콜을 사용하여 서버에게 요청할때
    // 한글, 빈칸(blank), 특수문자들을 전달하면
    // 전달되는 과정에서 오류를 일으킬수 있다.
    // 서버에서 요청을 거부하기도 한다.
    // 한글, 빈칸, 특수문자는 미리 설정된 기호(코드)로 변환을 시켜줘야 한다
    // 이 변환을 URI Encoding 이라고 한다.
    // URI Encoding 을 실행하는 함수
    try {
      response = await http.get(
        headers: headers,
        Uri.parse(getMovieURL),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
    if (response.statusCode == 200) {
      var resultItems = await json.decode(response.body["items"]);
      debugPrint("naver 응답 데이터 $resultItems");
    } else {
      debugPrint("naver 응답 오류");
    }
  }
}
