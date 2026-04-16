# 🚀 5分钟快速开始

## 你想做什么？

### 📱 我只是想看看效果

**直接打开文件：**
1. 找到 `index.html` 文件
2. 双击打开
3. 开始使用！

---

### 🌐 我想部署到网上让别人也能访问

**使用 GitHub Pages（推荐）：**

#### 超简单三步法：

**第1步：创建仓库**
```
1. 访问 github.com/new
2. 名称填：media-credibility-scorer
3. 选择 Public
4. 点击 Create repository
```

**第2步：上传文件**
```
1. 点击 "uploading an existing file"
2. 拖拽 web_ui 文件夹的所有文件
3. 点击 "Commit changes"
```

**第3步：启用网站**
```
1. 进入 Settings → Pages
2. Branch 选择 main，Folder 选择 / (root)
3. 点击 Save
4. 等待 1-2 分钟
```

**完成！** 访问：
```
https://你的用户名.github.io/media-credibility-scorer/
```

📖 **详细步骤**: 查看 [DEPLOY_GUIDE.md](DEPLOY_GUIDE.md)

---

### 💻 我想在本地修改代码

**方法1: 直接编辑（最简单）**
```bash
# 用任何文本编辑器打开 index.html
# 修改后保存
# 刷新浏览器查看效果
```

**方法2: 使用本地服务器**
```bash
cd Weibo/News/web_ui
python -m http.server 8080
# 访问 http://localhost:8080
```

**方法3: VS Code + Live Server**
```
1. 安装 Live Server 扩展
2. 右键 index.html
3. 选择 "Open with Live Server"
```

---

### 🔧 我想自定义评分标准

**修改分数：**

打开 `index.html`，找到 JavaScript 部分：

```javascript
// 修改类型分数（约第600行）
getTypeScore(type) {
    const scores = {
        '官方媒体': 95,  // ← 改这里
        '主流媒体': 85,  // ← 改这里
        // ...
    };
}

// 修改国家分数（约第620行）
getCountryScore(country) {
    const scores = {
        '中国': 90,  // ← 改这里
        '美国': 80,  // ← 改这里
        // ...
    };
}

// 修改权重（约第650行）
const totalScore = typeScore * 0.4 +    // ← 改这里
                  countryScore * 0.35 + // ← 改这里  
                  ageScore * 0.25;      // ← 改这里
```

---

### 📊 我想添加更多功能

**查看这些文档：**
- 📖 [ARCHITECTURE.md](ARCHITECTURE.md) - 技术架构详解
- 📖 [README.md](README.md) - 完整使用说明
- 📖 [SUMMARY.md](SUMMARY.md) - 项目总结

**常见扩展：**
1. 添加新国家 - 在 `<select>` 中添加 `<option>`
2. 修改颜色 - 编辑 CSS 中的颜色值
3. 添加图表 - 参考 Chart.js 文档
4. 导出数据 - 添加导出按钮和函数

---

### ❓ 我遇到了问题

**页面空白？**
```
✓ 检查网络连接（需要加载 CDN）
✓ 按 F12 查看控制台错误
✓ 确认文件名是 index.html（小写）
```

**样式错乱？**
```
✓ 清除浏览器缓存（Ctrl+F5）
✓ 检查是否完整复制了文件
✓ 确认浏览器版本较新
```

**Git 推送失败？**
```
✓ 使用 Personal Access Token 代替密码
✓ 或配置 SSH 密钥
✓ 查看 DEPLOY_GUIDE.md 的常见问题
```

**GitHub Pages 404？**
```
✓ 确认已启用 Pages（Settings → Pages）
✓ 等待 2-5 分钟
✓ 确认文件名是 index.html
✓ 清除浏览器缓存
```

---

### 🎯 快速参考卡片

**评分标准速查：**
```
类型分数：
  官方媒体 95 | 主流媒体 85 | 商业媒体 70
  自媒体 50   | 个人账号 30

国家分数：
  中国 90 | 港澳台 85 | 发达国家 80
  发展中国家 65 | 其他 50

年龄分数：
  >10年 95 | 5-10年 85 | 3-5年 75
  1-3年 60 | <1年 50

权重：类型40% + 国家35% + 年龄25%
```

**评级标准：**
```
A+ (90-100): 极高可信度 🟢
A  (80-89):  高可信度   🟢
B  (70-79):  中高可信度 🟡
C  (60-69):  中等可信度 🟠
D  (50-59):  中低可信度 🔴
F  (<50):    低可信度   🔴
```

---

### 📞 需要更多帮助？

**文档导航：**
- 📘 完整说明 → [README.md](README.md)
- 🚀 部署指南 → [DEPLOY_GUIDE.md](DEPLOY_GUIDE.md)
- 🏗️ 技术架构 → [ARCHITECTURE.md](ARCHITECTURE.md)
- 📋 项目总结 → [SUMMARY.md](SUMMARY.md)

**在线资源：**
- Vue.js 文档: https://vuejs.org/
- Chart.js 文档: https://www.chartjs.org/
- GitHub Pages: https://pages.github.com/

---

## ✅ 检查清单

部署前确认：
- [ ] 有 GitHub 账号
- [ ] 安装了 Git（可选，命令行部署需要）
- [ ] 网络可以访问 GitHub
- [ ] 准备好了要上传的文件

部署后确认：
- [ ] 可以访问 GitHub Pages 网址
- [ ] 页面正常显示
- [ ] 可以进行评分操作
- [ ] 图表正常渲染
- [ ] 手机端也能正常显示

---

## 🎉 开始吧！

**最简单的路径：**
1. 双击 `index.html` 预览
2. 按照上面的"超简单三步法"部署
3. 分享链接给朋友

**预计时间：** 5-10 分钟

祝你成功！🚀
