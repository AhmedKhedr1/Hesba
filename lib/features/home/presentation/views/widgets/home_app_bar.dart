import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:hesba/Core/constants/app_assets.dart';
import 'package:hesba/Core/extensions/app_colors_extension.dart';
import 'package:hesba/Core/extensions/localization_extension.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';
import 'package:hesba/Core/widgets/themed_svg_icon.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      scrolledUnderElevation: 0,

      title: Padding(
        padding: AppPadding.appBar,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: AppIconSize.xl,
              height: AppIconSize.xl,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: context.colors.border),
              ),
              child: Icon(Icons.person),
            ),
            AppGap.hXs,

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(context.l10n.welcome, style: AppTextStyles.caption),

                Text('أحمد السعدي', style: AppTextStyles.titleSmall),
              ],
            ),
            Spacer(),
            ThemedSvgIcon(
              lightIcon: AppAssets.appIconLight,
              darkIcon: AppAssets.appIconDark,
              width: AppLogoSize.header,
            ),
            AppGap.hXs,
            GestureDetector(
              onTap: () {},
              child: Container(
                height: AppAvatarSize.medium,
                width: AppAvatarSize.medium,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.colors.card,
                  border: Border.all(color: context.colors.border),
                ),
                child: ThemedSvgIcon(
                  lightIcon: AppAssets.notificationLight,
                  darkIcon: AppAssets.notificationdark,
                  width: 16.w,
                  height: 16.h,
                  fit: BoxFit.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
