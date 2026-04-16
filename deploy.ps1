# 媒体可信度评分系统 - GitHub Pages 部署助手 (PowerShell)

Write-Host "================================================================================" -ForegroundColor Cyan
Write-Host "媒体可信度评分系统 - GitHub Pages 部署助手" -ForegroundColor Cyan
Write-Host "================================================================================" -ForegroundColor Cyan
Write-Host ""

Set-Location $PSScriptRoot

Write-Host "📝 检查 Git 状态..." -ForegroundColor Yellow
git status
Write-Host ""

Write-Host "📦 添加文件到 Git..." -ForegroundColor Yellow
git add .
Write-Host ""

Write-Host "💾 提交更改..." -ForegroundColor Yellow
$commit_msg = Read-Host "请输入提交信息 (默认: Update Web UI)"
if ([string]::IsNullOrWhiteSpace($commit_msg)) {
    $commit_msg = "Update Web UI"
}
git commit -m $commit_msg
Write-Host ""

Write-Host "🚀 推送到 GitHub..." -ForegroundColor Yellow
git push
Write-Host ""

Write-Host "================================================================================" -ForegroundColor Green
Write-Host "✅ 部署完成！" -ForegroundColor Green
Write-Host "================================================================================" -ForegroundColor Green
Write-Host ""
Write-Host "🌐 请访问你的 GitHub Pages 网站:" -ForegroundColor Cyan
Write-Host "   https://YOUR_USERNAME.github.io/YOUR_REPO/" -ForegroundColor White
Write-Host ""
Write-Host "⏱️  等待 1-2 分钟后刷新页面即可看到更新" -ForegroundColor Yellow
Write-Host ""
Write-Host "按任意键退出..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
