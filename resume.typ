#import "template.typ": resume, header, resume_heading, edu_item, exp_item, project_item, skill_item, award_item

#show: resume
#show strong: set text(weight: 900)  // Songti SC 700 不够粗
#show heading: set text(weight: 900)

#set text(
  font: ("New Computer Modern", "Songti SC")
)

#header(
  name: "Fang Junjie",
  phone: "(+86) 15356160627",
  email: "julyfun.collect@outlook.com",
  site: "github.com/julyfun",
)

#resume_heading[教育背景]
#edu_item(
  name: "上海交通大学",
  degree: "信息工程, GPA 3.82 / 4.30, Ranking 12 / 33",
  location: "上海市",
  date: "2021年9月 - 至今"
)

#resume_heading[实习经历]
#exp_item(
  role: "本科生研究助理",
  name: "上海交通大学, 元知机器人研究院",
  location: "上海市",
  date: "2023年10月 - 至今",
  [用 Taichi 语言编写#link("https://github.com/julyfun/PlasticBag")[MPM 塑料袋物理仿真]，准备部署并用于 Garment manipulation model 的基准测试。仿真领域当前并没有塑料袋这种材料的相关研究，因此本人结合 APIC 算法和褶皱模型，能让塑料袋呈现出其特殊的弹塑性和不规律的折痕],
  [魔改 #link("https://clothfunnels.cs.columbia.edu/")[Cloth Funnels] （斯坦福的 Garment manipulation model）的输入输出层，并使得实验室的 Manipulation 框架能够轻松适配该项目],
  [学会批量搭建 Docker + MinIO + MongoDB + RabbitMQ 分布式数据库框架，以使大量不同机器生产的数据集得到统一管理],
)
// 没有网格算粒子之间相互作用就只能用粒子搜索粒子附近的粒子去计算碰撞/密度/概率来进行，这样会引起很多问题，比如粒子临域搜索就很麻烦
// https://www.cnblogs.com/FlyingZiming/p/14459174.html#mpm

#exp_item(
  role: "机器人视觉部部长",
  name: "上海交通大学, 交龙机器人战队",
  location: "上海市",
  date: "2021年9月 - 2023年8月",
  [无官方平台，自主构建目标追踪系统，实现对敌方机器人的全自动发弹打击（自瞄挂），识别器魔改自 Yolov5，预测器使用 OpenCV, Eigen 和 Ceres 手搓 C++17 代码，在比赛中的优势是独创使用扩展卡尔曼滤波器构建了敌方机器人的运动方程，以及构造了良好解耦的打击策略代码和#link("https://sjtu-robomaster-team.github.io/antitop/")[弹道闭环算法]，在2023年 RoboMaster 全国赛中，本战队依赖该自瞄系统获得了所有高校队伍中的最高命中率（官方统计），并在大疆青年工程师大会上#link("https://www.bilibili.com/video/BV1vX4y1W7U7")[展示]，#link("https://github.com/Harry-hhj/CVRM2021-sjtu")[项目开源分支]在 GitHub 上获得 300+ stars。个人代码量 $>= 20000$ 行],
  [进行 MiniPC、陀螺仪板、工业相机和双目相机等视觉硬件的走线、驱动、标定和调试，重新设计选型和线路 + 优化 Debugger，让硬件系统在频繁冲撞的赛场上性能稳定，不掉线],
  [开发详细的#link("https://sjtu-robomaster-team.github.io")[机器视觉教程]，该系列教程有数万浏览量，且经常在比赛圈子内被引用]
)
#exp_item(
  role: "信息学竞赛主教练",
  name: "上海交通大学附属中学闵行分校",
  location: "上海市",
  date: "2022年10月 - 至今",
  [自行设计和讲授从零基础直通提高组的#link("https://docs.qq.com/sheet/DWHF6clRmQmlKUUFw")[信奥培训课程]，组织 NOIP 模拟赛，同时撰写#link("https://www.luogu.com.cn/article/8ijh5m4r")[算法题解]，在洛谷共获 6000+ 点赞和 1200+ 评论],
  [带队参加 2023年 CSP-S 和 NOIP，零基础队员也获得了多个提高组奖项]
)

#resume_heading("项目经历")
#project_item(
  name: [#link("https://github.com/Harry-hhj/CVRM2021-sjtu")[rm.cv.std]],
  skills: "C++, Python, Cuda, Docker, ROS, OpenCV, Flask ~20k loc.",
  date: "2021年9月 - 至今",
  [在 RoboMaster 比赛中使用的自瞄系统，由往届项目重构，是战队夺得2023年全国赛总冠军的重要技术之一],
  [魔改 Yolov5 输出层为四点模型，调用学校 GPU 集群训练和导出模型，使用 TensorRT 在 MiniPC 上加速神经网络推理，识别敌人的帧率 $>= 200$ 帧，且在拖影长、曝光问题以及目标速度快等条件下也能较好识别],
  [基于 OpenCV 和 Eigen 的传统视觉轮廓提取、几何约束、图像滤波和特征点匹配，手搓 C++ 坐标变换器、EKF、梯度下降等底层数学库，将敌方机器人姿态等最优化问题转换为凸优化问题并设计求解方法，可能是首次解决比赛中困扰所有队伍视觉组多年的反陀螺建模难题],
  [使用 Pybind11 和 Flask 构建了简单的前端可视化 Debugger 和运行时调参 API，让大小朋友调试算法的效率得到很大提升],
)
#project_item(
  name: [#link("https://github.com/julyfun/PlasticBag")[PlasticBag]],
  skills: "Python, Taichi, Cuda ~2.5k loc.",
  date: "2023年12月 - 至今",
  [用 Taichi-lang 编写的高性能弹塑体仿真，实现基于混合欧拉 - 拉格朗日的 3D 弹塑体模拟，使用 MPM-APIC + 褶皱模型算法，简化碰撞/密度/概率的计算方式，同时在计算 Bending 能量时引入 Bending rest angle 在弹性限度外连锁突变，实现良好的塑性折痕效果]
)
#project_item(
  name: [#link("https://github.com/julyfun/mfa.fish")[mfa.fish]],
  skills: "Shell ~500 loc.",
  date: "2023年7月 - 至今",
  [与同学合作完成的命令行工具，使用 Fish shell 编写，实现快速查找文本内容，初始化特定语言项目，对小项目的 git 命令组合，简单的跨机器拷贝文本，用户友好的命令行提示等功能，提高了命令行使用效率]
)
#project_item(
  name: [#link("https://github.com/julyfun/how-to")[how-to]],
  skills: "Unix-cli, Markdown, etc. ~4k loc.",
  date: "2023年6月 - 至今",
  [遵循特定规范编写各种工具的使用文档，结合 fzf，mfa.fish 等工具快速检索，非常有助于软硬件、网络、OS、环境、框架和工具问题的复现和解决],
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
  name: [#link("https://github.com/julyfun/ics-pa")[ics-pa]],
  skills: "C ~2k loc.",
  date: "2023年6月 - 2023年7月",
  [南京大学操作系统课程 PA，编写模拟图灵机的 CPU、内存、x86_64 寄存器、PC、加法器，熟悉调试器解析命令，单步执行，扫描寄存器和内存的源码，并在调试器中添加词法分析、表达式求值和监视点功能]
)
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
  price: "一等奖",
  date: "2018年11月"
)

#resume_heading("技能和兴趣")
#skill_item(
  category: "编程语言",
  skills: "C++，Python, C 较为熟练; SQL (Postgres), JavaScript, Java, Matlab, Rust, Zig 写过一些课程 Lab 或玩具项目"
)
#skill_item(
  category: "框架和库",
  skills: "ROS 1 & 2, OpenCV, Taichi, Unity, Cuda 使用较多; Pytorch, Tensorrt, React, Vue, Node.js, Bun, Flask, FastAPI, MinIO, MongoDB 有所涉猎"
)
#skill_item(
  category: "开发者工具",
  skills: "Git, Docker, Github CI, Neovim"
)
#skill_item(
  category: "兴趣方向",
  skills: "机器学习，AI；机器视觉，导航和路径规划；编程语言，编译器，高性能计算，操作系统；软件开发，UI 前端可视化，搜索推荐及算法"
)

// #resume_heading("个人陈述")

// how-to 这个仓库最早是因为 Ubuntu 的驱动被我搞坏了，于是记录下重装 Ubuntu 和重新配置工具链时遇到的问题和解决办法，这样以后再搞坏系统也能秒装。此后我就化身文档狂魔，什么工具出问题了都记录解决方案和环境，方便复现，同学闻之都感到十分佩服。对于我来说，这种低成本可复现性是软件魅力的一部分——搞坏硬件意味着钱包锐减，搞坏软件只需要 `git clone`，还免费。

// OI/ACM 出身的学生喜欢上软件开发是十分自然的，因此加入机器人战队时，我果断选择了以写软件为主的视觉部。早期的我只是一个连学长代码都跑不通的笨笨，但自瞄项目给我契机，寻找新锁敌算法的灵感，沉浸在技术中的时候，我似乎忘记了周围的事物。我用 OI 中的三分法降低了 PnP 算法的自由度，套上新设计的卡尔曼滤波，终于首次实现对敌人运动轨迹的完整预测。然而，机器人比赛中变数频繁，倒逼我无数次重构代码，优化鲁棒性和可扩展性，而且由于我们的整一套硬件系统频遭冲撞摧残，视觉部成员不得不熟悉各种硬件的使用和维护。成为部长之后长期组织培训和推进项目的经历，亦健壮了我的管理能力和表达能力。我非常擅长把自己熟练掌握的东西讲给别人听，每周全体大会困倦的听众听到我上台讲两句，他们就被逗乐而清醒了。
