@echo off
chcp 65001 >nul
echo ==============================================
echo Guardian V21.0 打包工具
echo ==============================================

echo.
echo [步骤1] 检查并安装依赖...
pip install ntplib Pillow requests wmi pyinstaller

echo.
echo [步骤2] 开始打包...
pyinstaller Guardian_v21.spec

echo.
echo [步骤3] 完成！
echo   打包后的exe文件位于: dist\Guardian_V21.exe
echo.
 pause
