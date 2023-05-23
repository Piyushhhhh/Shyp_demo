import 'package:flutter/material.dart';
import 'package:shyp/values/colors.dart';
import 'package:shyp/values/text_styles.dart';

class TabPicker extends StatefulWidget {
  final List<TabPickerItem> tabs;
  final int activeTabIndex;
  final Function(int index)? onChange;
  final bool isFinite;
  final Color? background;
  final Color? selectedColor;
  final Color? itemColor;
  final Color? selectedTextColor;
  final Color? itemTextColor;
  final EdgeInsets? itemMargin;
  final double startEndSpace;
  final TextStyle? textStyle;
  final double? height;
  final bool activeElementShadow;

  const TabPicker({
    super.key,
    required this.tabs,
    this.activeTabIndex = 0,
    this.onChange,
    this.isFinite = true,
    this.background,
    this.selectedColor,
    this.itemColor,
    this.selectedTextColor,
    this.itemTextColor,
    this.itemMargin,
    this.startEndSpace = 0,
    this.textStyle,
    this.height,
    this.activeElementShadow = true,
  }) : assert(tabs.length != 0);

  @override
  State<TabPicker> createState() => _TabPickerState();
}

class _TabPickerState extends State<TabPicker> {
  late TabPickerItem _activeTab;

  @override
  void initState() {
    super.initState();

    _activeTab = widget.tabs[widget.activeTabIndex];
  }

  void _changeTab(TabPickerItem tab) {
    setState(() => _activeTab = tab);
    widget.onChange?.call(widget.tabs.indexOf(tab));
  }

  Widget _tab(
    TabPickerItem tab, {
    bool active = false,
    VoidCallback? onTap,
  }) {
    if (tab.hidden) {
      return const SizedBox();
    }

    var color = active
        ? (widget.selectedTextColor ?? AppColors.primary())
        : (widget.itemTextColor ??
            AppColors.custom(
              Colors.black,
              AppColors.elementText(),
            ));

    var item = GestureDetector(
      key: Key("tab_${tab.text}"),
      onTap: tab.disabled ? null : onTap,
      child: Container(
        padding:
            widget.isFinite ? null : const EdgeInsets.symmetric(horizontal: 16),
        margin: widget.itemMargin?.copyWith(top: 2, bottom: 2) ??
            const EdgeInsets.symmetric(vertical: 2),
        decoration: BoxDecoration(
          color: active
              ? (widget.selectedColor ?? AppColors.whiteBlack())
              : (widget.itemColor ?? Colors.transparent),
          borderRadius: BorderRadius.circular(
              widget.height != null ? widget.height! / 2 : 60),
          boxShadow: [
            if (widget.activeElementShadow && active)
              BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 2,
                color: Colors.black.withOpacity(.25),
              ),
          ],
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tab.text,
              style: (widget.textStyle ?? TextStyles.bold12).copyWith(
                color: tab.disabled
                    ? AppColors.custom(AppColors.elementText(), Colors.black87)
                    : color,
              ),
            )
          ],
        ),
      ),
    );
    return widget.isFinite
        ? Expanded(
            child: item,
          )
        : item;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      height: widget.height ?? 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            widget.height != null ? widget.height! / 2 : 60),
        color: widget.background ??
            AppColors.custom(
                Colors.black.withOpacity(.05), AppColors.elementBackground()),
      ),
      child: _build(),
    );
  }

  Widget _build() {
    var child = Row(
      children: [
        SizedBox(
          width: widget.startEndSpace,
        ),
        ...widget.tabs
            .map((tab) => _tab(
                  tab,
                  active: _activeTab == tab,
                  onTap: () => _changeTab(tab),
                ))
            .toList(),
        SizedBox(
          width: widget.startEndSpace,
        ),
      ],
    );
    return widget.isFinite
        ? child
        : ScrollConfiguration(
            behavior: BehaviorWithoutEndScrollAnimation(),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: child,
            ),
          );
  }
}

class BehaviorWithoutEndScrollAnimation extends ScrollBehavior {
  Widget buildViewportChrome(
          BuildContext context, Widget child, AxisDirection axisDirection) =>
      child;
}

class TabPickerItem {
  final String text;
  final String icon;
  final bool disabled;
  final bool hidden;

  TabPickerItem(
    this.text, {
    this.icon = "",
    this.disabled = false,
    this.hidden = false,
  });

  @override
  bool operator ==(Object other) {
    return other.hashCode == hashCode;
  }

  @override
  int get hashCode =>
      text.hashCode + icon.hashCode + disabled.hashCode + hidden.hashCode;
}
