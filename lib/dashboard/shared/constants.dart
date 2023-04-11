import '../../core/presentation/utils/colors.dart';
import '../../gen/assets.gen.dart';
import '../domain/card_model.dart';
import '../domain/filter_model.dart';

List<CardModel> cards = [
  CardModel(title: "My observations", subtitle: "150", image: Assets.icons.observations.path, color: ColorsManager.kObservations),
  CardModel(title: "Pending", subtitle: "4", image: Assets.icons.pending.path, color: ColorsManager.kPending),
  CardModel(title: "Progress", subtitle: "1", image: Assets.icons.progress.path, color: ColorsManager.kProgress),
  CardModel(title: "Resolved", subtitle: "2", image:Assets.icons.resolved.path, color: ColorsManager.kResolved),
  CardModel(title: "Closed", subtitle: "2", image: Assets.icons.closed.path, color: ColorsManager.kClosed ),
];


List<FilterModel> filters = [
  FilterModel(title: "Daily", subtitle: "", image: "", color: 0),
  FilterModel(title: "Safety", subtitle: "", image: "", color: 0),
  FilterModel(title: "Excellent", subtitle: "", image: "", color: 0),
  FilterModel(title: "Work clothes, E.P.I", subtitle: "", image: "", color: 0),
  FilterModel(title: "Bad condition", subtitle: "", image: "", color: 0),
];