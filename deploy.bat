@echo off
chcp 65001 >nul
echo ================================================================================
echo 媒体可信度评分系统 - GitHub Pages 部署助手
echo ================================================================================
echo.

cd /d "%~dp0"

echo 📝 检查 Git 状态...
git status
echo.

echo 📦 添加文件到 Git...
git add .
echo.

echo 💾 提交更改...
set /p commit_msg="请输入提交信息 (默认: Update Web UI): "
if "%commit_msg%"=="" set commit_msg=Update Web UI
git commit -m "%commit_msg%"
echo.

echo 🚀 推送到 GitHub...
git push
echo.

echo ================================================================================
echo ✅ 部署完成！
echo ================================================================================
echo.
echo 🌐 请访问你的 GitHub Pages 网站:
echo    https://YOUR_USERNAME.github.io/YOUR_REPO/
echo.
echo ⏱️  等待 1-2 分钟后刷新页面即可看到更新
echo.
pause
