import 'package:rx_command/rx_command.dart';
//import 'package:rx_command/rx_command_listener.dart';

import 'package:flutter_katkemsos/services/service_locator.dart';
import 'package:flutter_katkemsos/services/api_data.dart';
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

class KatManager {

  RxCommand<Map<String, dynamic>, List<Identity>> loadIdentity;
  RxCommand<Map<String, dynamic>, List<Border>> loadBorder;
  RxCommand<Map<String, dynamic>, List<Access>> loadAccess;
  RxCommand<Map<String, dynamic>, List<Habit>> loadHabit;
  RxCommand<Map<String, dynamic>, List<Family>> loadFamily;
  RxCommand<Map<String, dynamic>, List<Age>> loadAge;
  RxCommand<Map<String, dynamic>, List<Occupation>> loadOccupation;
  RxCommand<Map<String, dynamic>, List<Religion>> loadReligion;
  RxCommand<Map<String, dynamic>, List<Education>> loadEducation;
  RxCommand<Map<String, dynamic>, List<Plan>> loadPlan;
  RxCommand<Map<String, dynamic>, List<Real>> loadReal;
  RxCommand<Map<String, dynamic>, List<PublicSpace>> loadPublicSpace;
  RxCommand<Map<String, dynamic>, List<HumanResource>> loadHumanResource;
  RxCommand<Map<String, dynamic>, List<Pmks>> loadPmks;
  RxCommand<Map<String, dynamic>, List<Psks>> loadPsks;

  KatManager() {
    loadIdentity = RxCommand.createAsync<Map<String, dynamic>, List<Identity>>(getIt.get<ApiData>().loadIdentity);
    loadBorder = RxCommand.createAsync<Map<String, dynamic>, List<Border>>(getIt.get<ApiData>().loadBorder);
    loadAccess = RxCommand.createAsync<Map<String, dynamic>, List<Access>>(getIt.get<ApiData>().loadAccess);
    loadHabit = RxCommand.createAsync<Map<String, dynamic>, List<Habit>>(getIt.get<ApiData>().loadHabit);
    loadFamily = RxCommand.createAsync<Map<String, dynamic>, List<Family>>(getIt.get<ApiData>().loadFamily);
    loadAge = RxCommand.createAsync<Map<String, dynamic>, List<Age>>(getIt.get<ApiData>().loadAge);
    loadOccupation = RxCommand.createAsync<Map<String, dynamic>, List<Occupation>>(getIt.get<ApiData>().loadOccupation);
    loadReligion = RxCommand.createAsync<Map<String, dynamic>, List<Religion>>(getIt.get<ApiData>().loadReligion);
    loadEducation = RxCommand.createAsync<Map<String, dynamic>, List<Education>>(getIt.get<ApiData>().loadEducation);
    loadPlan = RxCommand.createAsync<Map<String, dynamic>, List<Plan>>(getIt.get<ApiData>().loadPlan);
    loadReal = RxCommand.createAsync<Map<String, dynamic>, List<Real>>(getIt.get<ApiData>().loadReal);
    loadPublicSpace = RxCommand.createAsync<Map<String, dynamic>, List<PublicSpace>>(getIt.get<ApiData>().loadPublicSpace);
    loadHumanResource = RxCommand.createAsync<Map<String, dynamic>, List<HumanResource>>(getIt.get<ApiData>().loadHumanResource);
    loadPmks = RxCommand.createAsync<Map<String, dynamic>, List<Pmks>>(getIt.get<ApiData>().loadPmks);
    loadPsks = RxCommand.createAsync<Map<String, dynamic>, List<Psks>>(getIt.get<ApiData>().loadPsks);

  }
}