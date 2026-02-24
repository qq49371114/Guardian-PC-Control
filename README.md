# 🖥️ Guardian - Windows 电脑使用时间控制程序

> 🔒 守护者 V21.0 - 专业电脑时间管理系统

## 📖 项目简介

Guardian 是一个专业的 Windows 电脑使用时间控制程序，适用于家长控制孩子电脑使用时间、自律管理等场景。

## ✨ 核心功能（12项）

### 基础功能
| 功能 | 说明 |
|------|------|
| ⏰ 分时段控制 | 根据时间表限制使用 |
| 🔐 密码保护 | 180秒超时，超级密码解锁 |
| 🌐 NTP时间同步 | 防止修改本地时间绕过 |
| ⚡ 60秒强制关机 | 非规则外超时自动关机 |
| 🔒 缓存加密 | XOR+Base64加密配置文件 |

### 新增功能 (V21.0)
| 功能 | 说明 |
|------|------|
| 🔒 系统时间锁定 | WMI监控防止修改时间 |
| 🔔 提醒倒计时 | 5分钟+1分钟温馨提醒 |
| 📝 违规日志记录 | SQLite数据库记录 |
| 📚 学习/游戏模式 | 多模式时间表切换 |
| 📊 使用统计系统 | 每日使用时长统计 |
| 📸 自动截图监控 | 每10分钟截屏上传 |
| 🎁 累计奖励机制 | 每周五检查，最多60分钟 |
| 💾 数据备份恢复 | 云端自动备份 |

## 🎁 奖励机制

- 📅 **每周五**自动检查
- ⭐ 每次按时完成：**+10 分钟**
- 🚧 每周上限：**60 分钟（1小时）**
- ✅ 奖励信息显示在弹窗中

## 📦 打包成 EXE

### 依赖安装

```bash
pip install ntplib Pillow requests wmi pyinstaller
```

### 打包命令

```bash
pyinstaller --onefile --windowed --hidden-import=ntplib --hidden-import=PIL --hidden-import=requests --hidden-import=wmi --hidden-import=sqlite3 --name Guardian_V21 Guardian_v21.py
```

或使用一键脚本：`build_guardian_v21.bat`

### 生成文件

```
dist/Guardian_V21.exe
```

## 🚀 使用方法

1. 下载或打包 `Guardian_v21.py`
2. 以**管理员身份**运行（需要WMI权限）
3. 程序自动创建必要文件到 `C:\ProgramData\Guardian\`
4. 使用云端配置或本地配置控制时间表

## 📁 文件结构

```
C:\ProgramData\Guardian\
├── guardian.log              # 主日志文件
├── cached_config.json        # 缓存配置（加密）
├── usage_stats.db            # 统计数据库（SQLite）
├── bonus_time.json           # 奖励配置
└── screenshots/              # 自动截屏目录
```

## ⚙️ 配置说明

### 默认超级密码

```
WanerLovesGege520
```

### 时间表配置

支持学习和游戏两种模式，可通过云端配置切换。

## 📋 版本历史

### V21.0 (2024-02-24)
- 新增 8 项功能
- 奖励机制完善
- 奖励弹窗显示

### V20.0 (2024-02-23)
- 60秒强制关机
- 缓存数据加密
- NTP安全模式

## ⚠️ 注意事项

1. **管理员权限运行** - V21.0 需要 WMI 权限
2. **杀毒软件** - 可能误报（PyInstaller 常见问题）
3. **首次运行** - 会自动创建必要目录和文件

## 📄 许可证

MIT License

## 👨‍💻 作者

婉儿 & 下一站幸福

---

💕 守护电脑使用，养成良好习惯！
