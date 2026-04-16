# 🚀 GitHub Pages 部署快速指南

## 5分钟部署你的媒体可信度评分系统

### 前置条件

- ✅ 拥有 GitHub 账号
- ✅ 已安装 Git（[下载地址](https://git-scm.com/)）
- ✅ 有 `web_ui` 文件夹

---

## 方法一：使用 GitHub Desktop（最简单）⭐推荐

### 步骤1: 创建新仓库

1. 打开 [GitHub Desktop](https://desktop.github.com/)
2. 点击 **File** → **New Repository**
3. 填写信息：
   - Name: `media-credibility-scorer`
   - Description: `媒体可信度评分系统 Web UI`
   - 保持 Public
4. 点击 **Create Repository**

### 步骤2: 添加文件

1. 将 `web_ui` 文件夹中的所有文件复制到刚创建的仓库文件夹
2. GitHub Desktop 会自动检测到更改

### 步骤3: 提交并推送

1. 在左下角输入提交信息：`Initial commit`
2. 点击 **Commit to main**
3. 点击 **Publish repository**
4. 保持默认设置，点击 **Publish Repository**

### 步骤4: 启用 GitHub Pages

1. 在浏览器中打开你的仓库
2. 点击 **Settings** 标签
3. 左侧找到 **Pages**
4. 设置：
   - Source: **Deploy from a branch**
   - Branch: **main** / **/(root)**
5. 点击 **Save**

### 步骤5: 访问网站

等待 1-2 分钟后，访问：
```
https://你的用户名.github.io/media-credibility-scorer/
```

---

## 方法二：使用命令行

### 步骤1: 初始化 Git

```bash
cd Weibo/News/web_ui
git init
```

### 步骤2: 创建 GitHub 仓库

在 GitHub 网站上：
1. 点击右上角 **+** → **New repository**
2. 名称：`media-credibility-scorer`
3. 选择 **Public**
4. 点击 **Create repository**

### 步骤3: 关联远程仓库

```bash
# 替换 YOUR_USERNAME 为你的 GitHub 用户名
git remote add origin https://github.com/YOUR_USERNAME/media-credibility-scorer.git
```

### 步骤4: 提交并推送

```bash
git add .
git commit -m "Initial commit: Media Credibility Web UI"
git branch -M main
git push -u origin main
```

如果提示输入用户名和密码：
- 用户名：你的 GitHub 用户名
- 密码：使用 [Personal Access Token](https://github.com/settings/tokens)

### 步骤5: 启用 GitHub Pages

同方法一的步骤4

---

## 方法三：直接上传（无需 Git）

### 步骤1: 创建仓库

1. 访问 https://github.com/new
2. 填写仓库名称
3. 选择 Public
4. 点击 **Create repository**

### 步骤2: 上传文件

1. 点击 **uploading an existing file**
2. 拖拽以下文件：
   - `index.html`
   - `README.md`
3. 点击 **Commit changes**

### 步骤3: 启用 GitHub Pages

同方法一的步骤4

---

## ✅ 验证部署

### 检查清单

- [ ] 仓库已创建且为 Public
- [ ] 文件已上传（至少包含 index.html）
- [ ] GitHub Pages 已启用
- [ ] 等待了 1-2 分钟

### 测试访问

访问以下地址（替换为你的用户名和仓库名）：
```
https://YOUR_USERNAME.github.io/media-credibility-scorer/
```

应该能看到：
- ✅ 紫色渐变背景
- ✅ "媒体可信度评分系统" 标题
- ✅ 三个标签页（单个评分、批量评分、统计分析）
- ✅ 示例数据已加载

---

## 🔧 常见问题

### Q1: 页面显示 404？

**解决方案：**
1. 确认文件名是 `index.html`（全小写）
2. 确认已在 Settings → Pages 中启用
3. 等待 2-5 分钟
4. 清除浏览器缓存（Ctrl+F5）

### Q2: 页面空白或样式错乱？

**解决方案：**
1. 打开浏览器开发者工具（F12）
2. 查看 Console 是否有错误
3. 检查 Network 标签，确认 CDN 资源加载成功
4. 确保网络连接正常

### Q3: Git push 失败？

**解决方案：**
```bash
# 方法1: 使用 Personal Access Token
# 在 https://github.com/settings/tokens 创建 token
# 使用 token 代替密码

# 方法2: 配置 SSH
ssh-keygen -t ed25519 -C "your_email@example.com"
# 添加公钥到 GitHub: https://github.com/settings/keys
git remote set-url origin git@github.com:YOUR_USERNAME/media-credibility-scorer.git
```

### Q4: 如何更新网站？

**解决方案：**
```bash
# 修改文件后
cd Weibo/News/web_ui
git add .
git commit -m "Update: 描述你的更改"
git push

# 或使用部署脚本
.\deploy.ps1  # PowerShell
# 或
deploy.bat    # CMD
```

### Q5: 可以使用自定义域名吗？

**解决方案：**
1. 在仓库根目录创建 `CNAME` 文件
2. 内容写上你的域名，例如：`score.example.com`
3. 在你的域名 DNS 设置中添加 CNAME 记录指向 `YOUR_USERNAME.github.io`
4. 在 Settings → Pages → Custom domain 中输入你的域名

---

## 📊 部署后优化

### 1. 添加 favicon

创建 `favicon.ico` 文件放在根目录

### 2. SEO 优化

在 `<head>` 中添加：
```html
<meta name="description" content="媒体可信度评分系统">
<meta name="keywords" content="媒体,可信度,评分,分析">
<meta property="og:title" content="媒体可信度评分系统">
<meta property="og:description" content="基于类型、国家、年龄的多维度评估">
```

### 3. 性能优化

- 图片压缩
- 使用 CDN
- 启用 Gzip（GitHub Pages 自动启用）

---

## 🎉 成功标志

当你看到以下内容时，说明部署成功：

1. ✅ 可以访问 `https://用户名.github.io/仓库名/`
2. ✅ 页面正常显示，无错误
3. ✅ 可以进行评分操作
4. ✅ 图表正常渲染
5. ✅ 响应式设计正常工作

---

## 📞 需要帮助？

- 查看 `README.md` 获取详细说明
- 检查浏览器控制台错误信息
- 参考 [GitHub Pages 官方文档](https://pages.github.com/)

---

**祝你部署顺利！** 🚀
