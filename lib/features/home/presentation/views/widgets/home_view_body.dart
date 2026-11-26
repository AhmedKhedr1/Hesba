import 'package:flutter/material.dart';
import 'package:hesba/Core/constants/app_assets.dart';
import 'package:hesba/Core/extensions/localization_extension.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/Core/widgets/section_header.dart';
import 'package:hesba/features/home/data/category_model.dart';
import 'package:hesba/features/home/data/transaction_model.dart';
import 'package:hesba/features/home/presentation/views/widgets/categories_list_view.dart';
import 'package:hesba/features/home/presentation/views/widgets/month_selector.dart';
import 'package:hesba/features/home/presentation/views/widgets/summary_card.dart';
import 'package:hesba/features/home/presentation/views/widgets/transaction_item.dart';
import 'package:hesba/generated/l10n.dart';

class HomeViewBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.screen,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppGap.vMd,
                MonthSelector(
                  month: DateTime(2026, 11),
                  onPrevious: () {},
                  onNext: () {},
                ),
                AppGap.vLg,
                SummaryCard(
                  balanceMinor: 425000,
                  incomeMinor: 800000,
                  expenseMinor: 375000,
                  currency: 'ج.م',
                ),
                AppGap.vXl,
                SectionHeader(
                  title: context.l10n.categories,
                  actionText: context.l10n.seeAll,
                  onActionTap: () {},
                ),
                AppGap.vSm,
                CategoriesListView(categories: categories),
                AppGap.vXl,
                SectionHeader(
                  title: context.l10n.latestTransactions,
                  actionText: context.l10n.seeAll,
                  onActionTap: () {},
                ),
                AppGap.vMd,
              ],
            ),
          ),
          SliverList.builder(
            itemCount: transactions.length,
            itemBuilder: (context, index) {
              return TransactionItem(transactionModel: transactions[index]);
            },
          ),
          SliverToBoxAdapter(child: AppGap.vLg),
        ],
      ),
    );
  }
}

List<TransactionModel> transactions = [
  TransactionModel(
    imageLight: AppAssets.foodLight,
    imageDark: AppAssets.foodDark,
    title: S.current.food,
    subtitle: 'غداء عمل مطعم الفيروز',
    amount: '85 ج.م',
    time: '02:30 م',
    type: TransactionType.expense,
  ),
  TransactionModel(
    imageLight: AppAssets.transportLight,
    imageDark: AppAssets.transportDark,
    title: S.current.transportation,
    subtitle: 'أوبر إلى المكتب',
    amount: '55 ج.م',
    time: '03:30 م',
    type: TransactionType.expense,
  ),
  TransactionModel(
    imageLight: AppAssets.transportLight,
    imageDark: AppAssets.transportDark,
    title: S.current.transportation,
    subtitle: 'أوبر إلى المكتب',
    amount: '55 ج.م',
    time: '03:30 م',
    type: TransactionType.income,
  ),
];
List<CategoryModel> categories = [
  CategoryModel(
    title: S.current.food,
    totalAmount: '1,200 ج.م',
    imageLight: AppAssets.foodLight,
    imageDark: AppAssets.foodDark,
  ),
  CategoryModel(
    title: S.current.transportation,
    totalAmount: '450 ج.م',
    imageLight: AppAssets.transportLight,
    imageDark: AppAssets.transportDark,
  ),

  CategoryModel(
    title: S.current.bills,
    totalAmount: '800 ج.م',
    imageLight: AppAssets.invoicesLight,
    imageDark: AppAssets.invoicesDark,
  ),
  CategoryModel(
    title: S.current.food,
    totalAmount: '1,200 ج.م',
    imageLight: AppAssets.foodLight,
    imageDark: AppAssets.foodDark,
  ),
];
