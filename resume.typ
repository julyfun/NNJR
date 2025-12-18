#import "template.typ": resume, header, resume_heading, edu_item, exp_item, project_item, skill_item, award_item

#show: resume
#show strong: set text(weight: 900)  // Songti SC 700 不够粗
#show heading: set text(weight: 900)

#set text(
  font: ("New Computer Modern", "Songti SC")
)

#header(
  name: "Junjie Fang",
  phone: "(+86) 15356160627",
  email: "julyfun.collect@outlook.com",
  site: "github.com/julyfun",
)

#resume_heading[教育背景]
#edu_item(
  name: "上海交通大学",
  degree: [*信息工程*, GPA 3.89 / 4.30, Ranking 6 / 33\ 专业课程：程序与算法分析 (97), 数据结构(95), 机器学习(92), 数据库系统(93), 计算机网络(91), 高等数学(96), 概率论与统计(94), 高等电子学(96), 数字信号处理	(98), 最优化理论(87), 编程语言理论(89), 图论与计算代数(89)],
  location: "上海市",
  date: "2021年9月 - 2025年6月"
)

#edu_item(
  name: "上海交通大学",
  degree: [*电子信息（研究生）*],
  location: "上海市",
  date: "2025年6月 - 至今"
)

#resume_heading[实习经历]

#exp_item(
  role: "软件开发实习生",
  name: "上海舞肌科技有限公司",
  location: "上海市",
  date: "2024年6月 - 2024年8月",
  [基于 HTC VIVE Tracker 和遨博机械臂，在 ROS2 框架下搭建了六轴机械臂低延迟遥操作系统 #link("https://github.com/julyfun/moveit2_aubo")[fast_control]],
  [提出 Online Interpolation 算法，能在加速度和急动度限制下以理论最快的速度追踪手臂姿态，同时规避物体碰撞和自碰撞],
  [各模块解耦，使这套系统能轻松适配任意形态传感器和机械臂],
)

#exp_item(
  role: "本科生研究助理",
  name: "上海交通大学, 元知机器人研究院",
  location: "上海市",
  date: "2023年10月 - 至今",
  [学习修改 #link("https://clothfunnels.cs.columbia.edu/")[Cloth Funnels] （斯坦福的 Garment manipulation model）的网络架构，使其适配特定的机器学习框架],
  [学习批量搭建 Docker + MinIO + MongoDB + RabbitMQ 分布式数据库框架，以使大量不同机器生产的数据集得到统一管理],
  [提出一种带权重的遥操作运动学逆解和重映射方法，使得灵巧手/机械臂遥操作更灵活，延迟更低],
)

#exp_item(
  role: "信息学竞赛主教练",
  name: "上海交通大学附属中学闵行分校 | 勰码教育 | 翊码蔚来",
  location: "上海市",
  date: "2022年10月 - 至今",
  [带队参加 2023、2024 年 CSP-S 和 NOIP，零基础队员也获得了上海省一、省二（20+人次）等多个提高组奖项],
  [设计和讲授零基础、普及组、提高组的#link("https://docs.qq.com/sheet/DWHF6clRmQmlKUUFw")[C++ 信奥培训课程]，编写教案 PPT，组织 NOIP 模拟赛，同时撰写#link("https://www.luogu.com.cn/article/8ijh5m4r")[算法题解]，代码可读性强，注释清晰，在洛谷共获 7000+ 点赞和 1300+ 评论],
  [为 USACO 铜级、银级和铂金级学生一对一授课，内容涵盖 Java, Python, C++ 各级算法知识点，所有学员均成功晋级],
  [线上和线下课程、一对多和一对一课程均有多个学期经验，讲课风格宽松，注重互动，常受小朋友和家长好评],
)

#exp_item(
  role: "机器人视觉部部长",
  name: "上海交通大学, 交龙机器人战队",
  location: "上海市",
  date: "2021年9月 - 2023年8月",
  [进行 MiniPC、陀螺仪板、工业相机和双目相机等视觉硬件的走线、驱动、标定和调试，重新设计选型和线路 + 优化 Debugger，让硬件系统在频繁冲撞的赛场上性能稳定，不掉线],
  [无官方平台，自主构建目标追踪系统，实现对敌方机器人的全自动打击，在比赛中的优势是独创使用扩展卡尔曼滤波器构建了敌方机器人的运动方程，以及构造了良好解耦的打击策略代码和#link("https://sjtu-robomaster-team.github.io/antitop/")[弹道闭环算法]，在2023年 RoboMaster 全国赛中，本战队依赖该自瞄系统获得了所有高校队伍中的最高命中率（官方统计），并在大疆青年工程师大会上#link("https://www.bilibili.com/video/BV1vX4y1W7U7")[展示]，#link("https://github.com/Harry-hhj/CVRM2021-sjtu")[项目开源分支]在 GitHub 上获得 300+ stars。个人代码量 $>= 20000$ 行],
  [开发详细的#link("https://sjtu-robomaster-team.github.io")[机器视觉教程]，获得超过 6 万浏览量]
)

#resume_heading("项目经历")
#project_item(
  name: [#link("https://github.com/Harry-hhj/CVRM2021-sjtu")[rm.cv.std]],
  skills: "C++, Python, Cuda, Docker, ROS, OpenCV, Flask ~20k loc.",
  date: "2021年9月 - 至今",
  [在 RoboMaster 比赛中使用的自瞄系统，是战队夺得2023、2024年全国赛总冠军的重要技术之一],
  [调整 Yolo 输出层和损失函数使其适配比赛中的矩形、数字等小目标，使用 TensorRT 在 MiniPC 上加速神经网络推理，识别对方机器人的帧率 $>= 200$ 帧，在拖影长、曝光失常以及目标速度快等条件下也能较好识别],
  [基于 OpenCV 和 Eigen 的传统视觉轮廓提取、几何约束、图像滤波和特征点匹配，手搓 C++ 坐标变换器、EKF、梯度下降等底层数学库，将敌方机器人姿态等最优化问题转换为凸优化问题并设计求解方法，可能是首次解决比赛中困扰所有队伍视觉组多年的运动建模难题],
  [使用 Pybind11 和 Flask 构建了简单的前端可视化 Debugger 和运行时调参 API，让大小朋友调试算法的效率得到很大提升],
  [追求优雅的工程框架与风格，框架多次迭代和重构],
)
#project_item(
  name: [#link("https://github.com/julyfun?page=2&tab=repositories")[waveshare-realsense-smart-robot]],
  skills: "Python ~5k loc.",
  date: "2024年9月 - 2024年12月",
  [基于 3D Diffusion policy 搭建的 Loco-Manipulation system，通过建立 task-specific loss function 来执行多阶段抓取任务。我们提出将机器人底盘控制的目标设定为夹爪末端姿态而不是机械臂的基坐标，从而实现了与抓取策略解耦的整体移动控制，可以在不同 Policy 之间直接切换。]
)

#project_item(
  name: [#link("https://github.com/julyfun/jst.fish")[jst.fish]],
  skills: "Shell ~2k loc.",
  date: "2023年7月 - 至今",
  [与同学合作完成的命令行工具，使用 Fish shell 编写，实现快速 grep，Git 项目管理，特定语言项目配置，简单的跨机器文件传输，用户友好的命令行提示等功能，提高了命令行使用效率]
)
#project_item(
  name: [#link("https://how-to.fun")[how-to]],
  skills: "Shell, etc. ~30k loc.",
  date: "2023年6月 - 至今",
  [遵循特定规范编写各种工具的使用文档和使用经验，有助于软硬件、网络、OS、环境、框架和工具问题的复现和解决],
)

// 以下是没什么复用可能的东西
#project_item(
  name: [#link("https://github.com/julyfun/games103-lab3")[GAMES103 Labs]],
  skills: "C#, Unity ~3k loc.",
  date: "2023年10月 - 2023年12月",
  [实现基于隐式积分和 PBD 两种算法的布料仿真，隐式积分的 Chebyshev 加速及 Unity 调参方式优化，使用了数值微分的方法求解 SDF 的法向，实现 StVK 的 FEM 显式积分仿真，面向各向同性材料的特化算法 ],
  [在课程要求之外，采用步进法检测鼠标与 SDF 几何体之间的碰撞并支持物体交互，#link("https://github.com/julyfun/games103-lab2")[仓库]和#link("https://www.bilibili.com/video/BV1Zw411n7eA")[演示链接]，以及基于三角元的碰撞检测和处理，引入八叉树算法划分空间，大幅优化了碰撞检测效率]
)
#project_item(
  name: [#link("https://github.com/julyfun/r0")[r0]],
  skills: "Rust ~2k loc.",
  date: "2024年3月 - 2024年4月",
  [编译到 x86_64 平台的函数式语言编译器]
)
// #project_item(
//   name: [#link("https://github.com/julyfun/ds-proj1")[ds-proj]],
//   skills: "C++ ~1.5k loc.",
//   date: "2024年4月",
//   [无参考代码从头编写的模板红黑树 map，特点是重新思考了 Zig-Zag 的写法使之比大多数网上写法减少了一半核心代码量且数学上等价，并利用 Iterator 适配了 C++17 STL]
// )
// #project_item(
//   name: [#link("https://github.com/julyfun/ics-pa")[ics-pa]],
//   skills: "C ~2k loc.",
//   date: "2023年6月 - 2023年7月",
//   [南京大学操作系统课程 PA，编写模拟图灵机的 CPU、内存、x86_64 寄存器、PC、加法器，熟悉调试器解析命令，单步执行，扫描寄存器和内存的源码，并在调试器中添加词法分析、表达式求值和监视点功能]
// )
// #project_item(
//   name: [#link("https://github.com/julyfun/d2l-ai")[d2l-ai]],
//   skills: "Python, Pytorch",
//   date: "2023年9月 - 2023年11月",
//   [自学吴恩达《深度学习》和在线公开课程《动手学深度学习》，手敲后者的实验代码]
// )
#project_item(
  name: [#link("https://github.com/julyfun/ray-tracing")[ray-tracing]],
  skills: "Rust ~1k loc.",
  date: "2023年7月",
  [用图形学知识完成的玩具光追项目，编写 Rust 进行相机和反光材料的抽象，实现漫反射材料、折射材料、金属材料的 Fuzzy reflection，利用简单有效的方法实现抗锯齿和景深效果]
)

#resume_heading("荣誉和获奖")
#award_item(
  name: "第 7 届中国大学生程序竞赛 (CCPC) 哈尔滨站",
  price: "金奖",
  date: "2021年11月"
)
#award_item(
  name: "第 46 届国际大学生程序设计竞赛 (ICPC) 亚洲区域赛",
  price: "银奖",
  date: "2021年10月"
)
#award_item(
  name: "第二十二届全国大学生机器人大赛 (RoboMaster) 全国赛",
  price: "冠军（团队）",
  date: "2023年8月"
)
#award_item(
  name: "第二十一届全国大学生机器人大赛 (RoboMaster) 东部区域赛",
  price: "季军（团队）",
  date: "2022年6月"
)
#award_item(
  name: "CCF 非专业级别软件能力认证提高级 (CSP-S)",
  price: "一等奖",
  date: "2019年11月"
)
#award_item(
  name: "全国青少年信息学奥林匹克联赛提高组 (NOIP) 浙江",
  price: "一等奖 (460 / 600)",
  date: "2018年11月"
)

#resume_heading("技能和兴趣")
#skill_item(
  category: "编程语言",
  skills: "C++，Python, C, Rust, Swift, SQL, JavaScript, Java, Matlab, Zig"
)
#skill_item(
  category: "软件框架",
  skills: "Git, Unity, Flask, FastAPI, MinIO, MongoDB"
)
#skill_item(
  category: "机器人框架",
  skills: "ROS/ROS2, Gazebo, Rerun"
)
#skill_item(
  category: "科学计算",
  skills: "Taichi, Pytorch, Tensorrt"
)

// #resume_heading("个人陈述")

// how-to 这个仓库最早是因为 Ubuntu 的驱动被我搞坏了，于是记录下重装 Ubuntu 和重新配置工具链时遇到的问题和解决办法，这样以后再搞坏系统也能秒装。此后我就化身文档狂魔，什么工具出问题了都记录解决方案和环境，方便复现，同学闻之都感到十分佩服。对于我来说，这种低成本可复现性是软件魅力的一部分——搞坏硬件意味着钱包锐减，搞坏软件只需要 `git clone`，还免费。

// OI/ACM 出身的学生喜欢上软件开发是十分自然的，因此加入机器人战队时，我果断选择了以写软件为主的视觉部。早期的我只是一个连学长代码都跑不通的笨笨，但自瞄项目给我契机，寻找新锁敌算法的灵感，沉浸在技术中的时候，我似乎忘记了周围的事物。我用 OI 中的三分法降低了 PnP 算法的自由度，套上新设计的卡尔曼滤波，终于首次实现对敌人运动轨迹的完整预测。然而，机器人比赛中变数频繁，倒逼我无数次重构代码，优化鲁棒性和可扩展性，而且由于我们的整一套硬件系统频遭冲撞摧残，视觉部成员不得不熟悉各种硬件的使用和维护。成为部长之后长期组织培训和推进项目的经历，亦健壮了我的管理能力和表达能力。我非常擅长把自己熟练掌握的东西讲给别人听，每周全体大会困倦的听众听到我上台讲两句，他们就被逗乐而清醒了。
