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
  [自学 GAMES 103（基于物理的计算机动画），GAMES 201（高级物理引擎实战），完成#link("https://github.com/julyfun/games103-lab3")[课程 Lab]],
  [实现基于 MPM 算法和 Taichi 语言的#link("https://github.com/julyfun/PlasticBag")[弹塑体物理仿真]，目标是部署于生产环境],
  [魔改 #link("https://github.com/real-stanford/cloth-funnels")[cloth-funnels] 机械臂折叠布料 model 的输入输出层],
  [参与分布式系统的数据库基建，使用 Docker 部署数据处理系统，撰写文档]
)
#exp_item(
  role: "信息学竞赛主教练",
  name: "上海交通大学附属中学闵行分校",
  location: "上海市",
  date: "2022年10月 - 至今",
  [自行设计和讲授从零基础到提高组的#link("https://docs.qq.com/sheet/DWHF6clRmQmlKUUFw")[信奥培训课程]],
  [定期组织 NOIP 模拟赛，撰写的#link("https://www.luogu.com.cn/article/8ijh5m4r")[算法题解]在洛谷共获得了 6000+ 点赞和 1200+ 评论],
  [带队参加 2023年 CSP-S 和 NOIP，从零基础开始学起的队员获得了多个提高组省级二等奖]
)
#exp_item(
  role: "机器人视觉部部长",
  name: "上海交通大学, 交龙机器人战队",
  location: "上海市",
  date: "2021年9月 - 2023年8月",
  [无官方平台，自主构建目标追踪系统，实现对敌方机器人的全自动发弹打击（自瞄挂），识别器魔改自 Yolov5，预测器使用 OpenCV, Eigen 和 Ceres 手搓 C++17 代码，在比赛中的优势是独创使用扩展卡尔曼滤波器构建了敌方机器人的运动方程，以及构造了良好解耦的打击策略代码和#link("https://sjtu-robomaster-team.github.io/antitop/")[弹道闭环算法]，在2023年 RoboMaster 全国赛中，本战队依赖该自瞄系统获得了所有队伍中的最高命中率（官方统计），并在大疆青年工程师大会上#link("https://www.bilibili.com/video/BV1vX4y1W7U7")[展示]，#link("https://github.com/Harry-hhj/CVRM2021-sjtu")[项目开源分支]在 GitHub 上获得 300+ stars。个人代码量 $>= 20000$ 行，运行平台为 AGX，同时探索了 GitHub 工作流的正确使用方式，以及迁移到 ROS2 平台的方法],
  [基于 Pybind11 和 Flask 构建了简单的前端可视化界面],
  [进行 MiniPC、陀螺仪板、工业相机和双目相机等视觉硬件的连接、驱动、标定和调试，与电控部研发的嵌入式开发板进行通信],
  [撰写详细的#link("https://sjtu-robomaster-team.github.io")[视觉文档和教程]，严格选拔和培训视觉部新队员]
)

#resume_heading("项目经历")
#project_item(
  name: [#link("https://github.com/julyfun/PlasticBag")[PlasticBag]],
  skills: "Python, Taichi, Cuda",
  date: "2023年12月 - 至今",
  [基于 Taichi 的高性能弹塑体仿真],
)
#project_item(
  name: [#link("https://github.com/julyfun/games103-lab3")[GAMES103 Labs]],
  skills: "C#, Unity",
  date: "2023年10月 - 2023年12月",
  [基于物理的计算机动画 Labs],
  [手写实现基于隐式积分和 PBD 的布料模拟和弹性体有限元积分仿真及三角面片碰撞，#link("https://www.bilibili.com/video/BV1Zw411n7eA")[演示链接]]
)
#project_item(
  name: [#link("https://github.com/julyfun/d2l-ai")[d2l-ai]],
  skills: "Python, Pytorch",
  date: "2023年9月 - 2023年11月",
  [自学吴恩达《深度学习》和在线公开课程《动手学深度学习》，手敲后者的实验代码]
)
#project_item(
  name: [#link("https://github.com/julyfun/mfa.fish")[mfa.fish]],
  skills: "Shell",
  date: "2023年7月 - 至今",
  [与同学合作完成的 Fish Shell 命令行工具，提高命令行使用效率],
)
#project_item(
  name: [#link("https://github.com/julyfun/ray-tracing")[ray-tracing]],
  skills: "Rust",
  date: "2023年7月",
  [使用图形学知识完成的玩具光追项目],
)
#project_item(
  name: [#link("https://github.com/julyfun/how-to")[how-to]],
  skills: "Unix-cli, etc.",
  date: "2023年6月 - 至今",
  [使用各种工具随手记录下的文档，包含 4000+ 行描述。],
)
#project_item(
  name: [#link("https://github.com/Harry-hhj/CVRM2021-sjtu")[rm.cv.std]],
  skills: "C++, Python, Cuda, Docker, ROS, OpenCV, Flask",
  date: "2021年9月 - 至今",
  [在 RoboMaster 比赛中使用的自瞄系统，是战队夺得2023年全国赛总冠军的重要技术之一],
)

#resume_heading("荣誉和获奖")
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
  name: "CCF 非专业级别软件能力认证提高级 (CSP-S)",
  price: "一等奖",
  date: "2019年11月"
)
#award_item(
  name: "全国青少年信息学奥林匹克联赛提高组 (NOIP) 浙江",
  price: "一等奖",
  date: "2018年11月"
)

#resume_heading("技能")
#skill_item(
  category: "编程语言",
  skills: "C++, Python, C, Rust 较为熟练; SQL (Postgres), JavaScript, Java, Matlab 写过一些课程 Lab 或玩具项目"
)
#skill_item(
  category: "框架和库",
  skills: "ROS 1 & 2, OpenCV, Taichi, Unity, Cuda 使用较多, Pytorch, Tensorrt, React, Vue, Node.js, Bun, Flask, FastAPI, MinIO, MongoDB 有所涉猎"
)
#skill_item(
  category: "开发者工具",
  skills: "Git, Docker, Github CI, Neovim"
)
