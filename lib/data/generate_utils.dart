import 'parent_list_data.dart';

class GenerateUtils {
  static final GenerateUtils _singleton = GenerateUtils._internal();

  factory GenerateUtils() {
    _singleton.getParentList();
    _singleton.getChilds();
    return _singleton;
  }

  GenerateUtils._internal();

  static const int basic = 1;
  static const int material_design = 2;
  static const int cupertino = 3;
  static const int layout = 4;
  static const int text = 5;
  static const int assets = 6;
  static const int input = 7;
  static const int animation = 8;
  static const int active = 9;
  static const int style = 10;
  static const int draw = 11;
  static const int async = 12;
  static const int scrollable = 13;
  static const int helper = 14;

  List<ParentItem> list = List();
  Map<int, List<ChildItem>> maps = new Map();

  void getParentList() {
    list.clear();
    list.add(ParentItem(
        "基础组件", "在构建您的第一个Flutter应用程序之前，您绝对需要了解这些widget", "", "", basic));
    list.add(ParentItem(
        "Material Components",
        "实现了Material Design 指南的视觉、效果、motion-rich的widget",
        "",
        "",
        material_design));
    list.add(ParentItem("Cupertino(iOS风格的widget)", "用于当前iOS设计语言的美丽和高保真widget",
        "", "", cupertino));
    list.add(ParentItem(
        "Layout", "排列其它widget的columns、rows、grids和其它的layouts", "", "", layout));
    list.add(ParentItem("Text", "文本显示和样式", "", "", text));
    list.add(
        ParentItem("Assets、图片、Icons", "管理assets, 显示图片和Icon", "", "", assets));
    list.add(ParentItem("Input",
        "Material Components 和 Cupertino中获取用户输入的widget", "", "", input));
    list.add(ParentItem(
        "动画和Motion", "在您的应用中使用动画。查看Flutter中的动画总览", "", "", animation));
    list.add(ParentItem("交互模型", "响应触摸事件并将用户路由到不同的页面视图（View）", "", "", active));
    list.add(ParentItem("样式", "管理应用的主题，使应用能够响应式的适应屏幕尺寸或添加填充", "", "", style));
    list.add(ParentItem(
        "绘制和效果", "Widget将视觉效果应用到其子组件，而不改变它们的布局、大小和位置", "", "", draw));
    list.add(ParentItem("Async", "Flutter应用的异步模型", "", "", async));
    list.add(ParentItem("滚动", "滚动一个拥有多个子组件的父组件", "", "", scrollable));
    list.add(ParentItem("辅助功能", "给你的App添加辅助功能(这是一个正在进行的工作)", "", "", helper));
  }

  void getChilds() {
    maps[basic] = basicChild();
    maps[material_design] = materialDesignChild();
    maps[cupertino] = cupertinoChild();
    maps[layout] = layoutChild();
    maps[text] = textChild();
    maps[assets] = assetsChild();
    maps[input] = inputChild();
    maps[style] = styleChild();
    maps[helper] = helperChild();
    maps[async] = asyncChild();
    maps[scrollable] = scrollableChild();
    maps[draw] = drawChild();
    maps[active] = activeChild();
    maps[animation] = animationChild();
  }

  static String mdHost =
      "https://github.com/jiang111/flutter_widgets_doc/blob/master/";
  static String imgHost =
      "https://github.com/jiang111/flutter_widgets_doc/raw/master/image/";

  List<ChildItem> basicChild() {
    String basicStr = mdHost + "basic/";
    List<ChildItem> result = new List();
    result.add(ChildItem("Container", "一个拥有绘制、定位、调整大小的 widget",
        basicStr + "Container.md", imgHost + "Container.png", basic));
    result.add(ChildItem("Row", "在水平方向上排列子widget的列表", basicStr + "Row.md",
        imgHost + "Row.png", basic));
    result.add(ChildItem("Column", "在垂直方向上排列子widget的列表", basicStr + "Column.md",
        imgHost + "Column.png", basic));
    result.add(ChildItem("Image", "一个显示图片的widget", basicStr + "Image.md",
        imgHost + "Image.png", basic));
    result.add(ChildItem(
        "Text", "单一格式的文本", basicStr + "Text.md", imgHost + "Text.png", basic));
    result.add(ChildItem("Icon", "A Material Design icon", basicStr + "Icon.md",
        imgHost + "Icon.png", basic));
    return result;
  }

  List<ChildItem> layoutChild() {
    String layoutStr = mdHost + "Layout/";
    List<ChildItem> result = new List();

    result.add(ChildItem.name(
        "Container",
        "一个拥有绘制、定位、调整大小的 widget",
        layoutStr + "Container.md",
        imgHost + "Container.png",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name(
        "Padding",
        "一个widget, 会给其子widget添加指定的填充",
        layoutStr + "Padding.md",
        imgHost + "Padding.png",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name(
        "Center",
        "将其子widget居中显示在自身内部的widget",
        layoutStr + "Center.md",
        imgHost + "Center.png",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name(
        "Align",
        "一个widget，它可以将其子widget对齐，并可以根据子widget的大小自动调整大小",
        layoutStr + "Align.md",
        imgHost + "Align.png",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name(
        "FittedBox",
        "按自己的大小调整其子widget的大小和位置",
        layoutStr + "FittedBox.md",
        imgHost + "FittedBox.png",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name(
        "AspectRatio",
        "一个widget，试图将子widget的大小指定为某个特定的长宽比",
        layoutStr + "AspectRatio.md",
        imgHost + "AspectRatio.png",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name(
        "ConstrainedBox",
        "对其子项施加附加约束的widget",
        layoutStr + "ConstrainedBox.md",
        imgHost + "ConstrainedBox.png",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name(
        "Baseline",
        "根据子项的基线对它们的位置进行定位的widget",
        layoutStr + "Baseline.md",
        imgHost + "Baseline.png",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name(
        "FractionallySizedBox",
        "一个widget，它把它的子项放在可用空间的一小部分。关于布局算法的更多细节，见RenderFractionallySizedOverflowBox",
        layoutStr + "FractionallySizedBox.md",
        imgHost + "FractionallySizedBox.png",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name(
        "IntrinsicHeight",
        "一个widget，它将它的子widget的高度调整其本身实际的高度",
        layoutStr + "IntrinsicHeight.md",
        imgHost + "IntrinsicHeight.png",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name(
        "IntrinsicWidth",
        "一个widget，它将它的子widget的宽度调整其本身实际的宽度",
        layoutStr + "IntrinsicWidth.md",
        imgHost + "IntrinsicWidth.png",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name(
        "LimitedBox",
        "一个当其自身不受约束时才限制其大小的盒子",
        layoutStr + "LimitedBox.md",
        imgHost + "LimitedBox.png",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name(
        "Offstage",
        "一个布局widget，可以控制其子widget的显示和隐藏",
        layoutStr + "Offstage.md",
        imgHost + "Offstage.png",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name(
        "OverflowBox",
        "对其子项施加不同约束的widget，它可能允许子项溢出父级",
        layoutStr + "OverflowBox.md",
        imgHost + "OverflowBox.png",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name(
        "SizedBox",
        "一个特定大小的盒子。这个widget强制它的孩子有一个特定的宽度和高度。如果宽度或高度为NULL，则此widget将调整自身大小以匹配该维度中的孩子的大小",
        layoutStr + "SizedBox.md",
        imgHost + "SizedBox.png",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name(
        "SizedOverflowBox",
        imgHost + "Image.png",
        layoutStr + "SizedOverflowBox.md",
        "一个特定大小的widget，但是会将它的原始约束传递给它的孩子，它可能会溢出",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name(
        "Transform",
        "在绘制子widget之前应用转换的widget",
        layoutStr + "Transform.md",
        imgHost + "Transform.png",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name(
        "CustomSingleChildLayout",
        "一个自定义的拥有单个子widget的布局widget",
        layoutStr + "CustomSingleChildLayout.md",
        imgHost + "CustomSingleChildLayout.png",
        layout,
        "拥有单个子元素的布局widget"));
    result.add(ChildItem.name("Row", "在水平方向上排列子widget的列表", layoutStr + "Row.md",
        imgHost + "Row.png", layout, "拥有多个子元素的布局widget"));
    result.add(ChildItem.name(
        "Column",
        "在垂直方向上排列子widget的列表",
        layoutStr + "Column.md",
        imgHost + "Column.png",
        layout,
        "拥有多个子元素的布局widget"));
    result.add(ChildItem.name(
        "Stack",
        "可以允许其子widget简单的堆叠在一起",
        layoutStr + "Stack.md",
        imgHost + "Stack.png",
        layout,
        "拥有多个子元素的布局widget"));
    result.add(ChildItem.name(
        "IndexedStack",
        "从一个子widget列表中显示单个孩子的Stack",
        layoutStr + "IndexedStack.md",
        imgHost + "IndexedStack.png",
        layout,
        "拥有多个子元素的布局widget"));
    result.add(ChildItem.name(
        "Flow",
        "一个实现流式布局算法的widget",
        layoutStr + "Flow.md",
        imgHost + "Flow.png",
        layout,
        "拥有多个子元素的布局widget"));
    result.add(ChildItem.name(
        "Table",
        "为其子widget使用表格布局算法的widget",
        layoutStr + "Table.md",
        imgHost + "Table.png",
        layout,
        "拥有多个子元素的布局widget"));
    result.add(ChildItem.name(
        "Wrap",
        "可以在水平或垂直方向多行显示其子widget",
        layoutStr + "Wrap.md",
        imgHost + "Wrap.png",
        layout,
        "拥有多个子元素的布局widget"));
    result.add(ChildItem.name(
        "ListBody",
        "一个widget，它沿着一个给定的轴，顺序排列它的子元素",
        layoutStr + "ListBody.md",
        imgHost + "ListBody.png",
        layout,
        "拥有多个子元素的布局widget"));
    result.add(ChildItem.name(
        "ListView",
        "可滚动的列表控件。ListView是最常用的滚动widget，它在滚动方向上一个接一个地显示它的孩子。在纵轴上，孩子们被要求填充ListView",
        layoutStr + "ListView.md",
        imgHost + "ListView.png",
        layout,
        "拥有多个子元素的布局widget"));
    result.add(ChildItem.name(
        "CustomMultiChildLayout",
        "使用一个委托来对多个孩子进行设置大小和定位的小部件",
        layoutStr + "CustomMultiChildLayout.md",
        imgHost + "CustomMultiChildLayout.png",
        layout,
        "拥有多个子元素的布局widget"));
    result.add(ChildItem.name(
        "LayoutBuilder",
        "构建一个可以依赖父窗口大小的widget树",
        layoutStr + "LayoutBuilder.md",
        imgHost + "LayoutBuilder.png",
        layout,
        "Layout helpers"));

    return result;
  }

  List<ChildItem> materialDesignChild() {
    String materialStr = mdHost + "material_design/";
    List<ChildItem> result = new List();

    result.add(ChildItem.name(
        "Scaffold",
        "Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API",
        materialStr + "Scaffold.md",
        imgHost + "Scaffold.png",
        material_design,
        "App结构和导航"));
    result.add(ChildItem.name(
        "Appbar",
        "一个Material Design应用程序栏，由工具栏和其他可能的widget（如TabBar和FlexibleSpaceBar）组成",
        materialStr + "Appbar.md",
        imgHost + "Appbar.png",
        material_design,
        "App结构和导航"));
    result.add(ChildItem.name(
        "BottomNavigationBar",
        "底部导航条，可以很容易地在tap之间切换和浏览顶级视图",
        materialStr + "BottomNavigationBar.md",
        imgHost + "BottomNavigationBar.png",
        material_design,
        "App结构和导航"));
    result.add(ChildItem.name(
        "TabBar",
        "一个显示水平选项卡的Material Design widget",
        materialStr + "TabBar.md",
        imgHost + "TabBar.png",
        material_design,
        "App结构和导航"));
    result.add(ChildItem.name(
        "TabBarView",
        "显示与当前选中的选项卡相对应的页面视图。通常和TabBar一起使用",
        materialStr + "TabBarView.md",
        imgHost + "TabBarView.png",
        material_design,
        "App结构和导航"));
    result.add(ChildItem.name(
        "MaterialApp",
        "一个方便的widget，它封装了应用程序实现Material Design所需要的一些widget",
        materialStr + "MaterialApp.md",
        imgHost + "MaterialApp.png",
        material_design,
        "App结构和导航"));
    result.add(ChildItem.name(
        "WidgetsApp",
        "一个方便的类，它封装了应用程序通常需要的一些widget",
        materialStr + "WidgetsApp.md",
        imgHost + "WidgetsApp.png",
        material_design,
        "App结构和导航"));
    result.add(ChildItem.name(
        "Drawer",
        "从Scaffold边缘水平滑动以显示应用程序中导航链接的Material Design面板",
        materialStr + "Drawer.md",
        imgHost + "Drawer.png",
        material_design,
        "App结构和导航"));

    result.add(ChildItem.name(
        "RaisedButton",
        "Material Design中的button， 一个凸起的材质矩形按钮",
        materialStr + "RaisedButton.md",
        imgHost + "RaisedButton.png",
        material_design,
        "按钮"));
    result.add(ChildItem.name(
        "FloatingActionButton",
        "一个圆形图标按钮，它悬停在内容之上，以展示应用程序中的主要动作。FloatingActionButton通常用于Scaffold.floatingActionButton字段",
        materialStr + "FloatingActionButton.md",
        imgHost + "FloatingActionButton.png",
        material_design,
        "按钮"));

    result.add(ChildItem.name(
        "FlatButton",
        "一个扁平的Material按钮",
        materialStr + "FlatButton.md",
        imgHost + "FlatButton.png",
        material_design,
        "按钮"));
    result.add(ChildItem.name(
        "IconButton",
        "一个Material图标按钮，点击时会有水波动画",
        materialStr + "IconButton.md",
        imgHost + "IconButton.png",
        material_design,
        "按钮"));
    result.add(ChildItem.name(
        "PopupMenuButton",
        "当菜单隐藏式，点击或调用onSelected时显示一个弹出式菜单列表",
        materialStr + "PopupMenuButton.md",
        imgHost + "PopupMenuButton.png",
        material_design,
        "按钮"));
    result.add(ChildItem.name(
        "ButtonBar",
        "水平排列的按钮组",
        materialStr + "ButtonBar.md",
        imgHost + "ButtonBar.png",
        material_design,
        "按钮"));

    result.add(ChildItem.name(
        "TextField",
        "文本输入框",
        materialStr + "TextField.md",
        imgHost + "TextField.png",
        material_design,
        "输入框和选择框"));
    result.add(ChildItem.name(
        "Checkbox",
        "复选框，允许用户从一组中选择多个选项",
        materialStr + "Checkbox.md",
        imgHost + "Checkbox.png",
        material_design,
        "输入框和选择框"));
    result.add(ChildItem.name(
        "Radio",
        "单选框，允许用户从一组中选择一个选项",
        materialStr + "Radio.md",
        imgHost + "Radio.png",
        material_design,
        "输入框和选择框"));
    result.add(ChildItem.name(
        "Switch",
        "On/off 用于切换一个单一状态",
        materialStr + "Switch.md",
        imgHost + "Switch.png",
        material_design,
        "输入框和选择框"));
    result.add(ChildItem.name(
        "Slider",
        "滑块，允许用户通过滑动滑块来从一系列值中选择",
        materialStr + "Slider.md",
        imgHost + "Slider.png",
        material_design,
        "输入框和选择框"));
    result.add(ChildItem.name(
        "Date & Time Pickers",
        "日期&时间选择器",
        materialStr + "Date-Time-Pickers.md",
        imgHost + "Date-Time-Pickers.png",
        material_design,
        "输入框和选择框"));

    result.add(ChildItem.name(
        "SimpleDialog",
        "简单对话框可以显示附加的提示或操作",
        materialStr + "SimpleDialog.md",
        imgHost + "SimpleDialog.png",
        material_design,
        "对话框、Alert、Panel"));

    result.add(ChildItem.name(
        "AlertDialog",
        "一个会中断用户操作的对话款，需要用户确认",
        materialStr + "AlertDialog.md",
        imgHost + "AlertDialog.png",
        material_design,
        "对话框、Alert、Panel"));
    result.add(ChildItem.name(
        "BottomSheet",
        "BottomSheet是一个从屏幕底部滑起的列表（以显示更多的内容）。你可以调用showBottomSheet()或showModalBottomSheet弹出",
        materialStr + "BottomSheet.md",
        imgHost + "BottomSheet.png",
        material_design,
        "对话框、Alert、Panel"));
    result.add(ChildItem.name(
        "ExpansionPanel",
        "Expansion panels contain creation flows and allow lightweight editing of an element. The ExpansionPanel widget implements this component.",
        materialStr + "ExpansionPanel.md",
        imgHost + "ExpansionPanel.png",
        material_design,
        "对话框、Alert、Panel"));
    result.add(ChildItem.name(
        "SnackBar",
        "具有可选操作的轻量级消息提示，在屏幕的底部显示",
        materialStr + "SnackBar.md",
        imgHost + "SnackBar.png",
        material_design,
        "对话框、Alert、Panel"));

    result.add(ChildItem.name(
        "Image",
        "一个显示图片的widget",
        materialStr + "Image.md",
        imgHost + "Image.png",
        material_design,
        "信息展示"));

    result.add(ChildItem.name(
        "Icon",
        "A Material Design icon.",
        materialStr + "Icon.md",
        imgHost + "Icon.png",
        material_design,
        "信息展示"));
    result.add(ChildItem.name(
        "Chip",
        "标签，一个Material widget。 它可以将一个复杂内容实体展现在一个小块中，如联系人",
        materialStr + "Chip.md",
        imgHost + "Chip.png",
        material_design,
        "信息展示"));
    result.add(ChildItem.name(
        "Tooltip",
        "一个文本提示工具，帮助解释一个按钮或其他用户界面，当widget长时间按下时（当用户采取其他适当操作时）显示一个提示标签",
        materialStr + "Tooltip.md",
        imgHost + "Tooltip.png",
        material_design,
        "信息展示"));
    result.add(ChildItem.name(
        "DataTable",
        "数据表显示原始数据集。它们通常出现在桌面企业产品中。DataTable Widget实现这个组件",
        materialStr + "DataTable.md",
        imgHost + "DataTable.png",
        material_design,
        "信息展示"));
    result.add(ChildItem.name(
        "Card",
        "一个 Material Design 卡片。拥有一个圆角和阴影",
        materialStr + "Card.md",
        imgHost + "Card.png",
        material_design,
        "信息展示"));
    result.add(ChildItem.name(
        "LinearProgressIndicator",
        "一个线性进度条，另外还有一个圆形进度条CircularProgressIndicator",
        materialStr + "LinearProgressIndicator.md",
        imgHost + "LinearProgressIndicator.png",
        material_design,
        "信息展示"));
    result.add(ChildItem.name(
        "ListTile",
        "一个固定高度的行，通常包含一些文本，以及一个行前或行尾图标",
        materialStr + "ListTile.md",
        imgHost + "ListTile.png",
        material_design,
        "布局"));
    result.add(ChildItem.name(
        "Stepper",
        "一个Material Design 步骤指示器，显示一系列步骤的过程",
        materialStr + "Stepper.md",
        imgHost + "Stepper.png",
        material_design,
        "布局"));
    result.add(ChildItem.name(
        "Divider",
        "一个逻辑1像素厚的水平分割线，两边都有填充",
        materialStr + "Divider.md",
        imgHost + "Divider.png",
        material_design,
        "布局"));
    return result;
  }

  List<ChildItem> cupertinoChild() {
    String cupStr = mdHost + "Cupertino/";
    List<ChildItem> result = new List();
    result.add(ChildItem(
      "CupertinoActivityIndicator",
      "一个iOS风格的loading指示器。显示一个圆形的转圈菊花",
      cupStr + "CupertinoActivityIndicator.md",
      imgHost + "CupertinoActivityIndicator.png",
      cupertino,
    ));
    result.add(ChildItem(
      "CupertinoAlertDialog",
      "iOS风格的alert dialog",
      cupStr + "CupertinoAlertDialog.md",
      imgHost + "CupertinoAlertDialog.png",
      cupertino,
    ));
    result.add(ChildItem(
      "CupertinoButton",
      "iOS风格的button",
      cupStr + "CupertinoButton.md",
      imgHost + "CupertinoButton.png",
      cupertino,
    ));
    result.add(ChildItem(
      "CupertinoDialog",
      "iOS风格的对话框",
      cupStr + "CupertinoDialog.md",
      imgHost + "CupertinoDialog.png",
      cupertino,
    ));
    result.add(ChildItem(
      "CupertinoDialogAction",
      "通常用于CupertinoAlertDialog的一个button",
      cupStr + "CupertinoDialogAction.md",
      imgHost + "CupertinoDialogAction.png",
      cupertino,
    ));
    result.add(ChildItem(
      "CupertinoSlider",
      "从一个范围中选一个值",
      cupStr + "CupertinoSlider.md",
      imgHost + "CupertinoSlider.png",
      cupertino,
    ));
    result.add(ChildItem(
      "CupertinoSwitch",
      "iOS风格的开关. 用于单一状态的开/关",
      cupStr + "CupertinoSwitch.md",
      imgHost + "CupertinoSwitch.png",
      cupertino,
    ));
    result.add(ChildItem(
      "CupertinoPageTransition",
      "提供iOS风格的页面过度动画",
      cupStr + "CupertinoPageTransition.md",
      imgHost + "CupertinoPageTransition.png",
      cupertino,
    ));
    result.add(ChildItem(
      "CupertinoFullscreenDialogTransition",
      "一个iOS风格的过渡，用于调用全屏对话框",
      cupStr + "CupertinoFullscreenDialogTransition.md",
      imgHost + "CupertinoFullscreenDialogTransition.png",
      cupertino,
    ));
    result.add(ChildItem(
      "CupertinoNavigationBar",
      "iOS风格的导航栏. 通常和CupertinoPageScaffold一起使用",
      cupStr + "CupertinoNavigationBar.md",
      imgHost + "CupertinoNavigationBar.png",
      cupertino,
    ));
    result.add(ChildItem(
      "CupertinoTabBar",
      "iOS风格的底部选项卡。 通常和CupertinoTabScaffold一起使用",
      cupStr + "CupertinoTabBar.md",
      imgHost + "CupertinoTabBar.png",
      cupertino,
    ));
    result.add(ChildItem(
      "CupertinoPageScaffold",
      "一个iOS风格的页面的基本布局结构。包含内容和导航栏",
      cupStr + "CupertinoPageScaffold.md",
      imgHost + "CupertinoPageScaffold.png",
      cupertino,
    ));
    result.add(ChildItem(
      "CupertinoTabScaffold",
      "标签式iOS应用程序的结构。将选项卡栏放在内容选项卡之上",
      cupStr + "CupertinoTabScaffold.md",
      imgHost + "CupertinoTabScaffold.png",
      cupertino,
    ));
    result.add(ChildItem(
      "CupertinoTabView",
      "支持选项卡间并行导航项卡的根内容。通常与CupertinoTabScaffolde一起使用",
      cupStr + "CupertinoTabView.md",
      imgHost + "CupertinoTabView.png",
      cupertino,
    ));

    return result;
  }

  List<ChildItem> textChild() {
    String textStr = mdHost + "Text/";
    List<ChildItem> result = new List();
    result.add(ChildItem(
        "Text", "单一格式的文本", textStr + "Text.md", imgHost + "Text.png", text));
    result.add(ChildItem("RichText", "一个富文本Text，可以显示多种样式的text",
        textStr + "RichText.md", imgHost + "RichText.png", text));
    result.add(ChildItem(
        "DefaultTextStyle",
        "文字样式，用于指定Text widget的文字样式",
        textStr + "DefaultTextStyle.md",
        imgHost + "DefaultTextStyle.png",
        text));
    return result;
  }

  List<ChildItem> assetsChild() {
    String assetsStr = mdHost + "assets_icons/";
    List<ChildItem> list = List();

    list.add(ChildItem("Image", "一个显示图片的widget", assetsStr + "Image.md",
        imgHost + "Image.png", assets));
    list.add(ChildItem("Icon", "A Material Design icon", assetsStr + "Icon.md",
        imgHost + "Icon.png", assets));
    list.add(ChildItem("RawImage", "一个直接显示dart:ui.Image的widget",
        assetsStr + "RawImage.md", imgHost + "RawImage.png", assets));
    list.add(ChildItem(
        "AssetBundle",
        "包含应用程序可以使用的资源，如图像和字符串。对这些资源的访问是异步，所以他们可以来自网络（例如，从NetworkAssetBundle）或从本地文件系统，这并不会挂起用户界面",
        assetsStr + "AssetBundle.md",
        imgHost + "AssetBundle.png",
        assets));

    return list;
  }

  List<ChildItem> inputChild() {
    String inputStr = mdHost + "input/";
    List<ChildItem> list = List();

    list.add(ChildItem("Form", "一个可选的、用于给多个TextField分组的widget",
        inputStr + "Form.md", imgHost + "Form.png", input));
    list.add(ChildItem(
        "FormField",
        "一个单独的表单字段。此widget维护表单字段的当前状态，以便在UI中直观地反映更新和验证错误",
        inputStr + "FormField.md",
        imgHost + "FormField.png",
        input));
    list.add(ChildItem(
        "RawKeyboardListener",
        "每当用户按下或释放键盘上的键时调用回调的widget",
        inputStr + "RawKeyboardListener.md",
        imgHost + "RawKeyboardListener.png",
        input));

    return list;
  }

  List<ChildItem> helperChild() {
    String helperStr = mdHost + "Accessibility/";
    List<ChildItem> list = List();
    list.add(ChildItem(
        "Semantics",
        "一个widget，用以描述widget树的具体语义。使用辅助工具、搜索引擎和其他语义分析软件来确定应用程序的含义",
        helperStr + "Semantics.md",
        imgHost + "Semantics.png",
        helper));
    list.add(ChildItem(
        "MergeSemantics",
        "合并其后代语义的widget",
        helperStr + "MergeSemantics.md",
        imgHost + "MergeSemantics.png",
        helper));
    list.add(ChildItem(
        "ExcludeSemantics",
        "删除其后代所有语义的widget",
        helperStr + "ExcludeSemantics.md",
        imgHost + "ExcludeSemantics.png",
        helper));

    return list;
  }

  List<ChildItem> asyncChild() {
    String asyncStr = mdHost + "async/";
    List<ChildItem> list = List();
    list.add(ChildItem("FutureBuilder", "基于与Future交互的最新快照来构建自身的widget",
        asyncStr + "FutureBuilder.md", imgHost + "FutureBuilder.png", async));
    list.add(ChildItem("StreamBuilder", "基于与流交互的最新快照构建自身的widget",
        asyncStr + "StreamBuilder.md", imgHost + "StreamBuilder.png", async));
    return list;
  }

  List<ChildItem> styleChild() {
    String styleStr = mdHost + "style/";
    List<ChildItem> list = List();
    list.add(ChildItem("Padding", "一个widget, 会给其子widget添加指定的填充",
        styleStr + "Padding.md", imgHost + "Padding.png", style));
    list.add(ChildItem("Theme", "将主题应用于子widget。主题描述了应用选择的颜色和字体",
        styleStr + "Theme.md", imgHost + "Theme.png", style));
    list.add(ChildItem("MediaQuery", "建立一个子树，在树中媒体查询解析不同的给定数据",
        styleStr + "MediaQuery.md", imgHost + "MediaQuery.png", style));
    return list;
  }

  List<ChildItem> scrollableChild() {
    String scrollableStr = mdHost + "scrollable/";
    List<ChildItem> list = List();

    list.add(ChildItem("ListView", "一个可滚动的列表", scrollableStr + "ListView.md",
        imgHost + "ListView.png", scrollable));
    list.add(ChildItem(
        "NestedScrollView",
        "一个可以嵌套其它可滚动widget的widget",
        scrollableStr + "NestedScrollView.md",
        imgHost + "NestedScrollView.png",
        scrollable));
    list.add(ChildItem("GridView", "一个可滚动的二维空间数组",
        scrollableStr + "GridView.md", imgHost + "GridView.png", scrollable));
    list.add(ChildItem(
        "SingleChildScrollView",
        "有一个子widget的可滚动的widget，子内容超过父容器时可以滚动",
        scrollableStr + "SingleChildScrollView.md",
        imgHost + "SingleChildScrollView.png",
        scrollable));
    list.add(ChildItem(
        "Scrollable",
        "实现了可滚动widget的交互模型，但不包含UI显示相关的逻辑",
        scrollableStr + "Scrollable.md",
        imgHost + "Scrollable.png",
        scrollable));
    list.add(ChildItem("Scrollbar", "一个Material Design 滚动条，表示当前滚动到了什么位置",
        scrollableStr + "Scrollbar.md", imgHost + "Scrollbar.png", scrollable));
    list.add(ChildItem(
        "CustomScrollView",
        "一个使用slivers创建自定义的滚动效果的ScrollView",
        scrollableStr + "CustomScrollView.md",
        imgHost + "CustomScrollView.png",
        scrollable));
    list.add(ChildItem(
        "NotificationListener",
        "一个用来监听树上冒泡通知的widget",
        scrollableStr + "NotificationListener.md",
        imgHost + "NotificationListener.png",
        scrollable));
    list.add(ChildItem(
        "ScrollConfiguration",
        "控制可滚动组件在子树中的表现行为",
        scrollableStr + "ScrollConfiguration.md",
        imgHost + "ScrollConfiguration.png",
        scrollable));
    list.add(ChildItem(
        "RefreshIndicator",
        "Material Design下拉刷新指示器，包装一个可滚动widget",
        scrollableStr + "RefreshIndicator.md",
        imgHost + "RefreshIndicator.png",
        scrollable));
    return list;
  }

  List<ChildItem> drawChild() {
    String drawStr = mdHost + "drawing_effect/";
    List<ChildItem> list = List();
    list.add(ChildItem("Opacity", "使其子widget透明的widget", drawStr + "Opacity.md",
        imgHost + "Opacity.png", draw));
    list.add(ChildItem("Transform", "在绘制子widget之前应用转换的widget",
        drawStr + "Transform.md", imgHost + "Transform.png", draw));
    list.add(ChildItem("DecoratedBox", "在孩子绘制之前或之后绘制装饰的widget",
        drawStr + "DecoratedBox.md", imgHost + "DecoratedBox.png", draw));
    list.add(ChildItem(
        "FractionalTranslation",
        "绘制盒子之前给其添加一个偏移转换",
        drawStr + "FractionalTranslation.md",
        imgHost + "FractionalTranslation.png",
        draw));
    list.add(ChildItem("RotatedBox", "可以延顺时针以90度的倍数旋转其子widget",
        drawStr + "RotatedBox.md", imgHost + "RotatedBox.png", draw));
    list.add(ChildItem("ClipOval", "用椭圆剪辑其孩子的widget", drawStr + "ClipOval.md",
        imgHost + "ClipOval.png", draw));
    list.add(ChildItem("ClipPath", "用path剪辑其孩子的widget", drawStr + "ClipPath.md",
        imgHost + "ClipPath.png", draw));
    list.add(ChildItem("ClipRect", "用矩形剪辑其孩子的widget", drawStr + "ClipRect.md",
        imgHost + "ClipRect.png", draw));
    list.add(ChildItem("CustomPaint", "提供一个画布的widget，在绘制阶段可以在画布上绘制自定义图形",
        drawStr + "CustomPaint.md", imgHost + "CustomPaint.png", draw));
    list.add(ChildItem(
        "BackdropFilter",
        "一个widget，它将过滤器应用到现有的绘图内容，然后绘制孩子。这种效果是比较昂贵的，尤其是如果过滤器是non-local，如blur",
        drawStr + "BackdropFilter.md",
        imgHost + "Image.png",
        draw));
    return list;
  }

  List<ChildItem> activeChild() {
    String activeStr = mdHost + "active/";
    List<ChildItem> result = new List();

    result.add(ChildItem(
        "LongPressDraggable",
        "可以使其子widget在长按时可拖动",
        activeStr + "LongPressDraggable.md",
        imgHost + "LongPressDraggable.png",
        active));
    result.add(ChildItem(
        "GestureDetector",
        "一个检测手势的widget",
        activeStr + "GestureDetector.md",
        imgHost + "GestureDetector.png",
        active));
    result.add(ChildItem("DragTarget", "一个拖动的目标widget，在完成拖动时它可以接收数据",
        activeStr + "DragTarget.md", imgHost + "DragTarget.png", active));
    result.add(ChildItem("Dismissible", "可以在拖动时隐藏的widget",
        activeStr + "Dismissible.md", imgHost + "Dismissible.png", active));
    result.add(ChildItem(
        "IgnorePointer",
        "在hit test中不可见的widget。当ignoring为true时，此widget及其子树不响应事件。但它在布局过程中仍然消耗空间，并像往常一样绘制它的孩子。它是无法捕获事件对象、因为它在RenderBox.hitTest中返回false",
        activeStr + "IgnorePointer.md",
        imgHost + "IgnorePointer.png",
        active));
    result.add(ChildItem(
        "AbsorbPointer",
        "在hit test期间吸收(拦截)事件。当absorbing为true时，此小部件阻止其子树通过终止命中测试来接收指针事件。它在布局过程中仍然消耗空间，并像往常一样绘制它的孩子。它只是防止其孩子成为事件命中目标，因为它从RenderBox.hitTest返回true",
        activeStr + "AbsorbPointer.md",
        imgHost + "AbsorbPointer.png",
        active));
    result.add(ChildItem("Navigator", "导航器，可以在多个页面(路由)栈之间跳转",
        activeStr + "Navigator.md", imgHost + "Navigator.png", active));
    result.add(ChildItem("Scrollable", "实现了可滚动widget的交互模型，但不包含UI显示相关的逻辑",
        activeStr + "Scrollable.md", imgHost + "Scrollable.png", active));

    return result;
  }

  List<ChildItem> animationChild() {
    String animationStr = mdHost + "animation_motion/";
    List<ChildItem> list = List();

    list.add(ChildItem(
        "AnimatedContainer",
        "在一段时间内逐渐改变其值的容器",
        animationStr + "AnimatedContainer.md",
        imgHost + "AnimatedContainer.png",
        animation));
    list.add(ChildItem(
        "AnimatedCrossFade",
        "一个widget，在两个孩子之间交叉淡入，并同时调整他们的尺寸",
        animationStr + "AnimatedCrossFade.md",
        imgHost + "AnimatedCrossFade.png",
        animation));
    list.add(ChildItem("Hero", "将其子项标记为hero动画候选的widget",
        animationStr + "Hero.md", imgHost + "Hero.png", animation));
    list.add(ChildItem(
        "AnimatedBuilder",
        "用于构建动画的通用小部件。AnimatedBuilder在有多个widget希望有一个动画作为一个较大的建造函数部分时会非常有用。要使用AnimatedBuilder，只需构建widget并将其传给builder函数即可",
        animationStr + "AnimatedBuilder.md",
        imgHost + "AnimatedBuilder.png",
        animation));
    list.add(ChildItem(
        "DecoratedBoxTransition",
        "DecoratedBox的动画版本，可以给它的Decoration不同属性使用动画",
        animationStr + "DecoratedBoxTransition.md",
        imgHost + "DecoratedBoxTransition.png",
        animation));
    list.add(ChildItem(
        "FadeTransition",
        "对透明度使用动画的widget",
        animationStr + "FadeTransition.md",
        imgHost + "FadeTransition.png",
        animation));
    list.add(ChildItem(
        "PositionedTransition",
        "Positioned的动画版本，它需要一个特定的动画来将孩子的位置从动画的生命周期的起始位置移到结束位置",
        animationStr + "PositionedTransition.md",
        imgHost + "PositionedTransition.png",
        animation));
    list.add(ChildItem(
        "RotationTransition",
        "对widget使用旋转动画",
        animationStr + "RotationTransition.md",
        imgHost + "RotationTransition.png",
        animation));
    list.add(ChildItem(
        "ScaleTransition",
        "对widget使用缩放动画",
        animationStr + "ScaleTransition.md",
        imgHost + "ScaleTransition.png",
        animation));
    list.add(ChildItem(
        "SizeTransition",
        "Animates its own size and clips and aligns the child",
        animationStr + "SizeTransition.md",
        imgHost + "SizeTransition.png",
        animation));
    list.add(ChildItem(
        "SlideTransition",
        "对相对于其正常位置的某个位置之间使用动画",
        animationStr + "SlideTransition.md",
        imgHost + "SlideTransition.png",
        animation));
    list.add(ChildItem(
        "AnimatedDefaultTextStyle",
        "在文本样式切换时使用动画",
        animationStr + "AnimatedDefaultTextStyle.md",
        imgHost + "AnimatedDefaultTextStyle.png",
        animation));
    list.add(ChildItem(
        "AnimatedListState",
        "动画列表的state",
        animationStr + "AnimatedListState.md",
        imgHost + "AnimatedListState.png",
        animation));
    list.add(ChildItem(
        "AnimatedModalBarrier",
        "一个阻止用户与widget交互的widget",
        animationStr + "AnimatedModalBarrier.md",
        imgHost + "AnimatedModalBarrier.png",
        animation));
    list.add(ChildItem(
        "AnimatedOpacity",
        "Opacity的动画版本，在给定的透明度变化时，自动地在给定的一段时间内改变孩子的Opacity",
        animationStr + "AnimatedOpacity.md",
        imgHost + "AnimatedOpacity.png",
        animation));
    list.add(ChildItem(
        "AnimatedPhysicalModel",
        "PhysicalModel的动画版本",
        animationStr + "AnimatedPhysicalModel.md",
        imgHost + "AnimatedPhysicalModel.png",
        animation));
    list.add(ChildItem(
        "AnimatedPositioned",
        "动画版本的Positioned，每当给定位置的变化，自动在给定的时间内转换孩子的位置",
        animationStr + "AnimatedPositioned.md",
        imgHost + "AnimatedPositioned.png",
        animation));
    list.add(ChildItem(
        "AnimatedSize",
        "动画widget，当给定的孩子的大小变化时，它自动地在给定时间内转换它的大小",
        animationStr + "AnimatedSize.md",
        imgHost + "AnimatedSize.png",
        animation));
    list.add(ChildItem(
        "AnimatedWidget",
        "当给定的Listenable改变值时，会重新构建该widget",
        animationStr + "AnimatedWidget.md",
        imgHost + "AnimatedWidget.png",
        animation));
    list.add(ChildItem(
        "AnimatedWidgetBaseState",
        "具有隐式动画的widget的基类",
        animationStr + "AnimatedWidgetBaseState.md",
        imgHost + "AnimatedWidgetBaseState.png",
        animation));

    return list;
  }
}
