import 'dart:convert';

import 'package:book/models/naver_book_dto.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// ignore_for_file: constant_identifier_names

const CLIENT_ID = "client id";
const CLIEN_SECRET = "client secret";
const NAVER_BOOK_URL = "https://openapi.naver.com/v1/search/book.json";

class NaverOpenAPI {
  Future<List<NaverBookDto>> loadBooks() async {
    Map<String, String> headers = {
      "X-Naver-Client-Id": CLIENT_ID,
      "X-Naver-Client-Secret": CLIEN_SECRET,
    };
    String query = '자바';
    String queryString = Uri(
      queryParameters: {
        "query": query,
        "display": "20",
        "start": "1",
      },
    ).query;
    dynamic response;

    try {
      response = await http.get(
        Uri.parse("$NAVER_BOOK_URL?$queryString"),
        headers: headers,
      );
    } catch (e) {
      debugPrint("요청오류");
    }
    if (response?.statusCode == 200) {
      debugPrint("응답받은 데이터 : ${response.body.toString()}");
      Iterable resultItems = await json.decode(response.body)["items"];
      var bookList = resultItems.map((dto) {
        var result = NaverBookDto.fromJson(dto);
        return result;
      });
      debugPrint(bookList.toString());
      return bookList.toList();
    } else {
      debugPrint("응답 오류 발생 : ${response.body.toString()}");
      throw Exception('api 연결 문제 발생');
    }
  }
}
