# 媒体可信度评分系统 - Web UI

## 🌐 在线演示

这是一个纯前端的媒体可信度评分系统，可以直接在浏览器中运行，无需后端服务器。

## ✨ 功能特性

- ✅ **单个评分** - 快速评估单个媒体的可信度
- ✅ **批量评分** - 支持 JSON 格式批量导入媒体数据
- ✅ **统计分析** - 实时计算平均分、中位数等统计指标
- ✅ **可视化图表** - 使用 Chart.js 生成交互式柱状图
- ✅ **响应式设计** - 完美支持手机、平板、桌面设备
- ✅ **离线可用** - 纯静态页面，可离线使用

## 🚀 本地测试

### 方法1: 直接打开（推荐）

直接双击 `index.html` 文件即可在浏览器中打开。

### 方法2: 使用本地服务器

```bash
# Python 3
cd web_ui
python -m http.server 8080

# 然后在浏览器访问 http://localhost:8080
```

### 方法3: 使用 VS Code Live Server

1. 安装 Live Server 扩展
2. 右键点击 `index.html`
3. 选择 "Open with Live Server"

## 📦 部署到 GitHub Pages

### 步骤1: 创建 GitHub 仓库

1. 登录 GitHub
2. 点击 "New repository"
3. 填写仓库名称（例如：`media-credibility-scorer`）
4. 选择 Public
5. 点击 "Create repository"

### 步骤2: 上传文件

#### 方法A: 使用 Git 命令行

```bash
# 进入项目目录
cd Weibo/News/web_ui

# 初始化 Git（如果还没有）
git init

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit: Media Credibility Web UI"

# 添加远程仓库（替换为你的仓库地址）
git remote add origin https://github.com/YOUR_USERNAME/media-credibility-scorer.git

# 推送到 GitHub
git branch -M main
git push -u origin main
```

#### 方法B: 使用 GitHub Desktop

1. 下载并安装 [GitHub Desktop](https://desktop.github.com/)
2. 点击 "Add an Existing Repository"
3. 选择 `web_ui` 文件夹
4. 发布到 GitHub

#### 方法C: 直接上传

1. 在 GitHub 仓库页面点击 "uploading an existing file"
2. 拖拽 `index.html` 和 `README.md` 文件
3. 点击 "Commit changes"

### 步骤3: 启用 GitHub Pages

1. 进入仓库的 **Settings** 页面
2. 左侧菜单找到 **Pages**
3. 在 "Source" 下拉框中选择：
   - Branch: `main` (或 `master`)
   - Folder: `/ (root)`
4. 点击 **Save**

### 步骤4: 访问你的网站

等待 1-2 分钟后，访问：

```
https://YOUR_USERNAME.github.io/media-credibility-scorer/
```

例如：
```
https://qcm.github.io/media-credibility-scorer/
```

## 🎨 自定义配置

### 修改评分标准

编辑 `index.html` 文件中的 JavaScript 部分：

```javascript
// 修改类型分数
getTypeScore(type) {
    const scores = {
        '官方媒体': 95,  // 修改这里
        '主流媒体': 85,
        // ...
    };
    return scores[type] || 40;
}

// 修改国家分数
getCountryScore(country) {
    const scores = {
        '中国': 90,  // 修改这里
        '美国': 80,
        // ...
    };
    return scores[country] || 50;
}

// 修改权重
calculateScore(type, country, date) {
    const typeScore = this.getTypeScore(type);
    const countryScore = this.getCountryScore(country);
    const ageScore = this.calculateAgeScore(date);

    // 修改这里的权重：0.4, 0.35, 0.25
    const totalScore = typeScore * 0.4 + countryScore * 0.35 + ageScore * 0.25;
    
    // ...
}
```

### 修改主题颜色

编辑 CSS 部分：

```css
body {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    /* 修改这里的颜色 */
}

.btn {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    /* 修改按钮颜色 */
}
```

### 添加更多国家/地区

在 `<select>` 标签中添加新的 `<option>`：

```html
<option value="新国家">新国家 (XX分)</option>
```

并在 JavaScript 中添加对应的分数：

```javascript
getCountryScore(country) {
    const scores = {
        // ...
        '新国家': XX,  // 添加这里
    };
    return scores[country] || 50;
}
```

## 📱 技术栈

- **Vue.js 3** - 响应式前端框架（CDN 版本）
- **Chart.js** - 数据可视化图表库
- **原生 CSS** - 无框架，轻量级
- **纯静态** - 无需构建工具，无需后端

## 🔧 开发说明

### 文件结构

```
web_ui/
├── index.html      # 主页面（包含 HTML、CSS、JS）
└── README.md       # 说明文档
```

### 主要组件

1. **Single Scoring** - 单个媒体评分表单
2. **Batch Scoring** - 批量评分（JSON 输入）
3. **Statistics** - 统计分析和图表展示

### 数据流

```
用户输入 → Vue 响应式数据 → 评分计算 → 结果展示
                                    ↓
                              Chart.js 图表更新
```

## 💡 使用技巧

### 批量导入示例

```json
[
  {
    "name": "新华社",
    "type": "官方媒体",
    "country": "中国",
    "date": "2009-05-01"
  },
  {
    "name": "凤凰网",
    "type": "主流媒体",
    "country": "中国",
    "date": "2010-08-15"
  },
  {
    "name": "某科技博主",
    "type": "自媒体",
    "country": "中国",
    "date": "2021-03-20"
  }
]
```

### 导出结果

目前可以：
1. 截图保存结果
2. 复制 JSON 数据
3. 查看统计图表

未来可以添加导出 CSV/Excel 功能。

## 🐛 常见问题

### Q: 页面显示空白？

A: 检查浏览器控制台是否有错误，确保网络连接正常（需要加载 CDN 资源）。

### Q: 图表不显示？

A: 确保已经在"批量评分"标签页中添加了数据并点击了"批量计算"。

### Q: 中文显示乱码？

A: 确保文件保存为 UTF-8 编码。

### Q: 如何在本地修改后预览？

A: 使用 Python 简单服务器：
```bash
python -m http.server 8080
```
然后访问 `http://localhost:8080`

### Q: GitHub Pages 部署后访问 404？

A: 
1. 确认文件名是 `index.html`（小写）
2. 确认已启用 GitHub Pages
3. 等待 1-2 分钟让 GitHub 处理
4. 检查仓库是否为 Public

## 📊 评分标准参考

详见项目根目录的文档：
- `../credibility_system/README.md`
- `../credibility_system/QUICK_START.md`

## 🔄 更新日志

### v1.0.0 (2026-04-16)
- ✅ 初始版本发布
- ✅ 单个评分功能
- ✅ 批量评分功能
- ✅ 统计分析功能
- ✅ 交互式图表
- ✅ 响应式设计

## 📝 待办事项

- [ ] 添加数据导出功能（CSV/Excel）
- [ ] 添加历史记录保存（LocalStorage）
- [ ] 添加更多图表类型（饼图、折线图）
- [ ] 支持从 Excel 文件导入
- [ ] 添加分享功能
- [ ] PWA 支持（离线使用）

## 👥 作者

qcm & Lingma AI

## 📄 许可

本项目作为 STU CSS Lab 的一部分，仅供学习和研究使用。

---

**立即体验**: 部署到 GitHub Pages 后访问你的专属链接！

🎉 祝你使用愉快！
