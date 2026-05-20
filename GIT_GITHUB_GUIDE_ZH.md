# Git / GitHub 使用指南

这份指南用于解释当前这个仓库如何推送到 GitHub，以及 Git 日常使用中最常见的命令和报错。

## 当前仓库

本地仓库路径：

```powershell
cd "C:\Users\DELL\Documents\New project\matlab-dsp-paper-reproduction-skill"
```

这个目录里已经有一次本地提交：

```text
Add MATLAB DSP paper reproduction skill
```

目标是把这个本地 Git 仓库上传到 GitHub 上的远程仓库。

## Git 和 GitHub 的关系

```text
Git    = 本地版本管理工具
GitHub = 远程代码托管网站
```

本地仓库在你的电脑上。

远程仓库在 GitHub 网站上。

常见动作：

```text
git push = 把本地提交上传到 GitHub
git pull = 把 GitHub 上的更新拉回本地
```

## 最常用命令

进入仓库目录：

```powershell
cd "C:\Users\DELL\Documents\New project\matlab-dsp-paper-reproduction-skill"
```

查看当前状态：

```powershell
git status
```

查看最近一次提交：

```powershell
git log --oneline -1
```

查看远程仓库地址：

```powershell
git remote -v
```

添加远程仓库：

```powershell
git remote add origin https://github.com/你的用户名/仓库名.git
```

修改远程仓库地址：

```powershell
git remote set-url origin https://github.com/你的用户名/仓库名.git
```

推送到 GitHub：

```powershell
git push -u origin main
```

## origin 和 main 是什么

命令：

```powershell
git push -u origin main
```

含义：

```text
git push = 上传
origin   = 远程仓库的默认名字
main     = 本地分支名
-u       = 记住本地 main 和远程 origin/main 的对应关系
```

设置好 `-u` 之后，以后通常只需要：

```powershell
git push
```

## 为什么会报 fetch first

常见报错：

```text
rejected main -> main (fetch first)
```

意思是：

```text
GitHub 远程仓库里已经有提交，但本地没有这些提交。
Git 不敢直接覆盖远程，所以拒绝 push。
```

最常见原因：

```text
创建 GitHub 仓库时勾选了 README、.gitignore 或 license。
```

GitHub 因此自动生成了一次提交，而本地仓库也有自己的第一次提交。两边提交历史不同，Git 不知道应该直接覆盖还是合并。

## 为什么 force-with-lease 会报 stale info

常见报错：

```text
rejected main -> main (stale info)
```

意思是：

```text
你使用了 --force-with-lease，但本地没有最新的远程引用信息。
Git 为了防止误删远程内容，拒绝强制推送。
```

通常先执行：

```powershell
git fetch origin main
```

再执行：

```powershell
git push --force-with-lease -u origin main
```

如果远程仓库没有重要内容，也可以直接强推：

```powershell
git push --force -u origin main
```

## 当前情况推荐命令

如果 GitHub 远程仓库里只是自动生成的 README，没有重要内容，推荐执行：

```powershell
cd "C:\Users\DELL\Documents\New project\matlab-dsp-paper-reproduction-skill"

git remote -v
git fetch origin main
git push --force-with-lease -u origin main
```

如果仍然失败，并且确认远程仓库没有重要内容：

```powershell
git push --force -u origin main
```

注意：`--force` 会用本地仓库覆盖远程分支。只在确认远程没有重要内容时使用。

## HTTPS 和 SSH 是什么

GitHub 远程地址有两种常见形式。

HTTPS：

```text
https://github.com/用户名/仓库名.git
```

SSH：

```text
git@github.com:用户名/仓库名.git
```

## 为什么 HTTPS 不需要 SSH key

如果远程地址是 HTTPS：

```text
https://github.com/用户名/仓库名.git
```

就不需要 SSH key。

HTTPS 通常通过 GitHub 登录授权或 Personal Access Token 认证。Windows 上常见情况是第一次 push 时弹出 GitHub 登录窗口，登录后 Windows Credential Manager 会保存凭据。

如果远程地址是 SSH：

```text
git@github.com:用户名/仓库名.git
```

才需要提前配置 SSH key，并把公钥添加到 GitHub。

## HTTPS vs SSH 怎么选

HTTPS：

```text
优点：简单，适合新手，登录 GitHub 即可。
缺点：有时认证弹窗或 token 比较烦。
```

SSH：

```text
优点：配置好之后稳定，不用反复登录。
缺点：第一次需要生成 SSH key 并添加到 GitHub。
```

当前建议：继续使用 HTTPS 即可。

## 日常 Git 工作流

以后修改 skill 后，常用流程是：

```powershell
cd "C:\Users\DELL\Documents\New project\matlab-dsp-paper-reproduction-skill"

git status
git add .
git commit -m "Improve MATLAB DSP skill"
git push
```

查看有没有改动：

```powershell
git status
```

查看具体改了什么：

```powershell
git diff
```

查看提交历史：

```powershell
git log --oneline
```

## 常见命令速查

```powershell
# 进入仓库
cd "C:\Users\DELL\Documents\New project\matlab-dsp-paper-reproduction-skill"

# 查看状态
git status

# 查看远程地址
git remote -v

# 添加远程地址
git remote add origin https://github.com/你的用户名/仓库名.git

# 修改远程地址
git remote set-url origin https://github.com/你的用户名/仓库名.git

# 第一次推送
git push -u origin main

# 远程已有自动 README 时，先获取远程信息
git fetch origin main

# 更安全的覆盖推送
git push --force-with-lease -u origin main

# 确认远程没有重要内容时，直接覆盖推送
git push --force -u origin main

# 后续日常提交
git add .
git commit -m "Update skill"
git push
```
