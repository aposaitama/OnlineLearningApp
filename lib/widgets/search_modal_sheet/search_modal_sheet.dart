import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/bloc/filters_bloc/filters_event.dart';
import 'package:online_app/models/categories_model/categories_model.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/widgets/search_modal_sheet/filter_categories_builder.dart';
import 'package:online_app/widgets/search_modal_sheet/filter_durations_builder.dart';
import 'package:online_app/widgets/search_modal_sheet/price_slider.dart';

import '../../bloc/filters_bloc/filters_bloc.dart';
import '../../bloc/filters_bloc/filters_state.dart';

class SearchModalSheet extends StatefulWidget {
  final VoidCallback applyFilters;

  const SearchModalSheet({
    super.key,
    required this.applyFilters,
  });

  @override
  State<SearchModalSheet> createState() => _SearchModalSheetState();
}

class _SearchModalSheetState extends State<SearchModalSheet> {
  FiltersBloc get _filtersBloc => context.read<FiltersBloc>();

  @override
  void initState() {
    super.initState();
    _loadCategories();
  }

  void _loadCategories() {
    _filtersBloc.add(
      const GetCategoriesOnFiltersEvent(),
    );
  }

  void _selectPriceRange(
    BuildContext context,
    RangeValues priceRange,
  ) {
    context.read<FiltersBloc>().add(
          SelectPriceRangeEvent(
            priceRange: priceRange,
          ),
        );
  }

  void _clearFilters(BuildContext context) {
    context.read<FiltersBloc>().add(
          const ClearFiltersStateEvent(),
        );
  }

  void _selectCategory(BuildContext context, CategoriesModel category) {
    context.read<FiltersBloc>().add(
          SelectCategoriesEvent(
            category: category,
          ),
        );
  }

  void _selectDuration(BuildContext context, RangeValues duration) {
    context.read<FiltersBloc>().add(
          SelectDurationEvent(
            duration: duration,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final appColorsModel = Theme.of(context).extension<AppColorsModel>();
    return BlocBuilder<FiltersBloc, FiltersState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            color: Theme.of(context).extension<AppColorsModel>()?.onSurface,
          ),
          height: MediaQuery.of(context).size.height / 1.4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => context.pop(),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: SvgPicture.asset(
                          'assets/icons/close.svg',
                          colorFilter: ColorFilter.mode(
                            appColorsModel!.mainTextColor,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 3.0,
                      ),
                      child: Text(
                        'Search Filter',
                        style: AppFonts.poppinsMedium.copyWith(
                          color: appColorsModel.mainTextColor,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14.0,
                      width: 14.0,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Text(
                    'Categories',
                    style: AppFonts.poppinsMedium.copyWith(
                      color: appColorsModel.mainTextColor,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                FilterCategoriesBuilder(
                  selectCategory: (category) => _selectCategory(
                    context,
                    category,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Text(
                    'Price',
                    style: AppFonts.poppinsMedium.copyWith(
                      color: appColorsModel.mainTextColor,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                PriceSlider(
                  onChange: (RangeValues range) => _selectPriceRange(
                    context,
                    range,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Text(
                    'Duration',
                    style: AppFonts.poppinsMedium.copyWith(
                      color: appColorsModel.mainTextColor,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                FilterDurationsBuilder(
                  selectDuration: (duration) => _selectDuration(
                    context,
                    duration,
                  ),
                ),
                const Spacer(),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => _clearFilters(context),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: AppColors.deepBlueColor,
                              width: 0.5,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 22.0,
                            ),
                            child: Text(
                              'Clear',
                              style: AppFonts.poppinsMedium.copyWith(
                                color: AppColors.deepBlueColor,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: SizedBox(
                          // width: double.infinity,
                          height: 50.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: widget.applyFilters,
                            child: const Text('Apply Filter'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
