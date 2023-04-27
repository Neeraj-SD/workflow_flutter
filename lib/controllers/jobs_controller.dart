import 'package:get/get.dart';

import '../core/api_provider.dart';
import '../model/job.dart';

class EventsController extends GetxController {
  final ApiProvider api = Get.find();

  var events = <JobModel>[].obs;
  var eventsLoading = false.obs;
  var selectedEventIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();

    fetchJobs();
  }

  void fetchJobs() async {
    eventsLoading(true);
    final Response response = await api.getApi('/api/events/cordinators/');

    List<JobModel> parsed = response.body['results'];
    // parsed.forEach((element) => print(element.slug));
    events.value = parsed;
    eventsLoading(false);
  }

  // TODO: IMPLEMENTATION
}
