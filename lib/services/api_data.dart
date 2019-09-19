import 'dart:io';

import 'package:dio/dio.dart';

import 'package:flutter_katkemsos/model/api_url.dart';
import 'package:flutter_katkemsos/model/location.dart';
import 'package:flutter_katkemsos/model/news.dart';

import 'package:flutter_katkemsos/model/identity.dart';
import 'package:flutter_katkemsos/model/border.dart';
import 'package:flutter_katkemsos/model/access.dart';
import 'package:flutter_katkemsos/model/habit.dart';
import 'package:flutter_katkemsos/model/family.dart';
import 'package:flutter_katkemsos/model/age.dart';
import 'package:flutter_katkemsos/model/occupation.dart';
import 'package:flutter_katkemsos/model/religion.dart';
import 'package:flutter_katkemsos/model/education.dart';
import 'package:flutter_katkemsos/model/plan.dart';
import 'package:flutter_katkemsos/model/real.dart';
import 'package:flutter_katkemsos/model/publicspace.dart';
import 'package:flutter_katkemsos/model/humanresource.dart';
import 'package:flutter_katkemsos/model/pmks.dart';
import 'package:flutter_katkemsos/model/psks.dart';

class ApiData {

  Future<List<Location>> loadMarkers () async {
    const url = ApiUrl.markers;
    List<Location> _table = [];
    Response<List<dynamic>> _response = await Dio().get<List<dynamic>>(url);
    _response.data.map((item) => _table.add(Location.fromJson(item))).toList();
    return _table;
  }

  Future<List<Location>> loadProfile () async {
    const url = ApiUrl.profile;
    List<Location> _table = [];
    Response<List<dynamic>> _response = await Dio().get<List<dynamic>>(url);
    _response.data.map((item) => _table.add(Location.fromJson(item))).toList();
    return _table;
  }

  Future<List<News>> loadNews () async {
    print('load news');
    const url = ApiUrl.news;
    List<News> _table = [];
    Response _response = await Dio().get(url);
    (_response.data['data'] as List<dynamic>).map((item) => _table.add(News.fromJson(item))).toList();
    return _table;
  }

  Future<List<News>> loadGallery () async {
    const url = ApiUrl.gallery;
    List<News> _table = [];
    Response _response = await Dio().get(url);
    (_response.data['data'] as List<dynamic>).map((item) => _table.add(News.fromJson(item))).toList();
    return _table;
  }

  Future<List<News>> loadProgram () async {
    const url = ApiUrl.program;
    List<News> _table = [];
    Response _response = await Dio().get(url);
    (_response.data['data'] as List<dynamic>).map((item) => _table.add(News.fromJson(item))).toList();
    return _table;
  }

  Future<dynamic> download (News item) async {
    try {
      return await Dio().download(
        item.download_url,
        (HttpHeaders headers)=> './katkemsos/' + item.nama_file
      );
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<List<Identity>> loadIdentity (Map<String, dynamic>val) async {
    const url = ApiUrl.identity;
    List<Identity> _table = [];
    Response<List<dynamic>> _response = await Dio().get<List<dynamic>>(url, queryParameters: val);
    _response.data.map((item) => _table.add(Identity.fromJson(item))).toList();
    return _table;
  }
  Future<List<Border>> loadBorder (Map<String, dynamic>val) async {
    const url = ApiUrl.border;
    List<Border> _table = [];
    Response<List<dynamic>> _response = await Dio().get<List<dynamic>>(url, queryParameters: val);
    _response.data.map((item) => _table.add(Border.fromJson(item))).toList();
    return _table;
  }
  Future<List<Access>> loadAccess (Map<String, dynamic>val) async {
    const url = ApiUrl.access;
    List<Access> _table = [];
    Response<List<dynamic>> _response = await Dio().get<List<dynamic>>(url, queryParameters: val);
    _response.data.map((item) => _table.add(Access.fromJson(item))).toList();
    return _table;
  }
  Future<List<Habit>> loadHabit (Map<String, dynamic>val) async {
    const url = ApiUrl.habit;
    List<Habit>_table = [];
    Response<List<dynamic>> _response = await Dio().get<List<dynamic>>(url, queryParameters: val);
    _response.data.map((item) => _table.add(Habit.fromJson(item))).toList();
    return _table;
  }
  Future<List<Family>> loadFamily (Map<String, dynamic>val) async {
    const url = ApiUrl.family;
    List<Family> _table = [];
    Response<List<dynamic>> _response = await Dio().get<List<dynamic>>(url, queryParameters: val);
    _response.data.map((item) => _table.add(Family.fromJson(item))).toList();
    return _table;
  }
  Future<List<Age>> loadAge (Map<String, dynamic>val) async {
    const url = ApiUrl.age;
    List<Age> _table = [];
    Response<List<dynamic>> _response = await Dio().get<List<dynamic>>(url, queryParameters: val);
    _response.data.map((item) => _table.add(Age.fromJson(item))).toList();
    return _table;
  }
  Future<List<Occupation>> loadOccupation (Map<String, dynamic>val) async {
    const url = ApiUrl.occupation;
    List<Occupation> _table = [];
    Response<List<dynamic>> _response = await Dio().get<List<dynamic>>(url, queryParameters: val);
    _response.data.map((item) => _table.add(Occupation.fromJson(item))).toList();
    return _table;
  }
  Future<List<Religion>> loadReligion (Map<String, dynamic>val) async {
    const url = ApiUrl.religion;
    List<Religion> _table = [];
    Response<List<dynamic>> _response = await Dio().get<List<dynamic>>(url, queryParameters: val);
    _response.data.map((item) => _table.add(Religion.fromJson(item))).toList();
    return _table;
  }
  Future<List<Education>> loadEducation (Map<String, dynamic>val) async {
    const url = ApiUrl.education;
    List<Education> _table = [];
    Response<List<dynamic>> _response = await Dio().get<List<dynamic>>(url, queryParameters: val);
    _response.data.map((item) => _table.add(Education.fromJson(item))).toList();
    return _table;
  }
  Future<List<Plan>> loadPlan (Map<String, dynamic>val) async {
    const url = ApiUrl.plan;
    List<Plan> _table = [];
    Response<List<dynamic>> _response = await Dio().get<List<dynamic>>(url, queryParameters: val);
    _response.data.map((item) => _table.add(Plan.fromJson(item))).toList();
    return _table;
  }
  Future<List<Real>> loadReal (Map<String, dynamic>val) async {
    const url = ApiUrl.real;
    List<Real> _table = [];
    Response<List<dynamic>> _response = await Dio().get<List<dynamic>>(url, queryParameters: val);
    _response.data.map((item) => _table.add(Real.fromJson(item))).toList();
    return _table;
  }
  Future<List<PublicSpace>> loadPublicSpace (Map<String, dynamic>val) async {
    const url = ApiUrl.publicspace;
    List<PublicSpace> _table = [];
    Response<List<dynamic>> _response = await Dio().get<List<dynamic>>(url, queryParameters: val);
    _response.data.map((item) => _table.add(PublicSpace.fromJson(item))).toList();
    return _table;
  }
  Future<List<HumanResource>> loadHumanResource (Map<String, dynamic>val) async {
    const url = ApiUrl.human;
    List<HumanResource> _table = [];
    Response<List<dynamic>> _response = await Dio().get<List<dynamic>>(url, queryParameters: val);
    _response.data.map((item) => _table.add(HumanResource.fromJson(item))).toList();
    return _table;
  }
  Future<List<Pmks>> loadPmks (Map<String, dynamic>val) async {
    const url = ApiUrl.pmks;
    List<Pmks> _table = [];
    Response<List<dynamic>> _response = await Dio().get<List<dynamic>>(url, queryParameters: val);
    _response.data.map((item) => _table.add(Pmks.fromJson(item))).toList();
    return _table;
  }
  Future<List<Psks>> loadPsks (Map<String, dynamic>val) async {
    const url = ApiUrl.psks;
    List<Psks> _table = [];
    Response<List<dynamic>> _response = await Dio().get<List<dynamic>>(url, queryParameters: val);
    _response.data.map((item) => _table.add(Psks.fromJson(item))).toList();
    return _table;
  }
}